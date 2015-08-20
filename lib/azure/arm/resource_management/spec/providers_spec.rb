# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @registered_providers = []
    @unregistered_providers = []
    @client = RESOURCES_CLIENT.providers
  end

  after(:all) do
    @registered_providers.each do |namespace|
      begin
        @client.unregister(namespace).value!
      rescue Exception
      end
    end

    @unregistered_providers.each do |namespace|
      begin
        @client.register(namespace).value!
      rescue Exception
      end
    end

  end

  it 'should list providers' do
    result = @client.list().value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should register provider' do
    providers = @client.list().value!.body.value
    targetProvider = providers.detect do |item|
      item.registration_state == 'NotRegistered' || item.registration_state == 'Unregistered'
    end
    @registered_providers.push(targetProvider.namespace)

    result = @client.register(targetProvider.namespace).value!

    expect(result.response.status).to eq(200)
    expect(result.body.namespace).to eq(targetProvider.namespace)
    expect(result.body.registration_state).not_to eq('NotRegistered')
  end

  it 'should unregister provider' do
    providers = @client.list().value!.body.value
    targetProvider = providers.detect {|item| item.registration_state == 'Registered' }
    @unregistered_providers.push(targetProvider.namespace)

    result = @client.unregister(targetProvider.namespace).value!

    expect(result.response.status).to eq(200)
    expect(result.body.namespace).to eq(targetProvider.namespace)
    expect(result.body.registration_state).not_to eq('Registered')
  end

  it 'should get provider' do
    providers = @client.list().value!.body.value

    result = @client.get(providers[0].namespace).value!

    expect(result.body).not_to be_nil
    expect(result.body.namespace).to eq(providers[0].namespace)
  end

end
