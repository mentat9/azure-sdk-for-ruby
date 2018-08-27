# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  #
  # REST API for Azure Logic Apps.
  #
  class WorkflowRunActionScopeRepetitions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the WorkflowRunActionScopeRepetitions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LogicManagementClient] reference to the LogicManagementClient
    attr_reader :client

    #
    # List the workflow run action scoped repetitions.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowRunActionRepetitionDefinitionCollection] operation results.
    #
    def list(resource_group_name, workflow_name, run_name, action_name, custom_headers = nil)
      response = list_async(resource_group_name, workflow_name, run_name, action_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List the workflow run action scoped repetitions.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, workflow_name, run_name, action_name, custom_headers = nil)
      list_async(resource_group_name, workflow_name, run_name, action_name, custom_headers).value!
    end

    #
    # List the workflow run action scoped repetitions.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, workflow_name, run_name, action_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'run_name is nil' if run_name.nil?
      fail ArgumentError, 'action_name is nil' if action_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/runs/{runName}/actions/{actionName}/scopeRepetitions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'runName' => run_name,'actionName' => action_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinitionCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get a workflow run action scoped repetition.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param repetition_name [String] The workflow repetition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowRunActionRepetitionDefinition] operation results.
    #
    def get(resource_group_name, workflow_name, run_name, action_name, repetition_name, custom_headers = nil)
      response = get_async(resource_group_name, workflow_name, run_name, action_name, repetition_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a workflow run action scoped repetition.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param repetition_name [String] The workflow repetition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workflow_name, run_name, action_name, repetition_name, custom_headers = nil)
      get_async(resource_group_name, workflow_name, run_name, action_name, repetition_name, custom_headers).value!
    end

    #
    # Get a workflow run action scoped repetition.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param run_name [String] The workflow run name.
    # @param action_name [String] The workflow action name.
    # @param repetition_name [String] The workflow repetition.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workflow_name, run_name, action_name, repetition_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'run_name is nil' if run_name.nil?
      fail ArgumentError, 'action_name is nil' if action_name.nil?
      fail ArgumentError, 'repetition_name is nil' if repetition_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/runs/{runName}/actions/{actionName}/scopeRepetitions/{repetitionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'runName' => run_name,'actionName' => action_name,'repetitionName' => repetition_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinition.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
