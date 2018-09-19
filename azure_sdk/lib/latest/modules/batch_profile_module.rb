# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::Latest
  module Batch
    module Mgmt
      Location = Azure::Batch::Mgmt::V2017_09_01::Location
      CertificateOperations = Azure::Batch::Mgmt::V2017_09_01::CertificateOperations
      BatchAccountOperations = Azure::Batch::Mgmt::V2017_09_01::BatchAccountOperations
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationOperations
      Operations = Azure::Batch::Mgmt::V2017_09_01::Operations
      PoolOperations = Azure::Batch::Mgmt::V2017_09_01::PoolOperations

      module Models
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
        TaskSchedulingPolicy = Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
        CloudServiceConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
        LinuxUserConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
        UserAccount = Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
        OSDisk = Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
        DeploymentConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
        ResourceFile = Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
        MetadataItem = Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
        EnvironmentSetting = Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
        Application = Azure::Batch::Mgmt::V2017_09_01::Models::Application
        BatchAccountKeys = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
        UserIdentity = Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
        StartTask = Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
        AutoUserSpecification = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
        VirtualMachineConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
        ApplicationPackageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
        CertificateReference = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
        ApplicationCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
        ResizeError = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
        CertificateBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
        ImageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
        WindowsConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
        ResizeOperationStatus = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
        ApplicationUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
        ListPoolsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
        BatchAccountListResult = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
        InboundNatPool = Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
        AutoStorageProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
        BatchAccount = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
        ListCertificatesResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
        PoolAllocationMode = Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
        Certificate = Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
        Pool = Azure::Batch::Mgmt::V2017_09_01::Models::Pool
        CertificateFormat = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
        DataDisk = Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
        PackageState = Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
        AllocationState = Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
        CertificateProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
        CertificateCreateOrUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
        ComputeNodeDeallocationOption = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
        CachingType = Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
        StorageAccountType = Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
        PoolProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
        AccountKeyType = Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
        InboundEndpointProtocol = Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
        OperationDisplay = Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
        ComputeNodeFillType = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
        OperationListResult = Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
        ProxyResource = Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
        NetworkSecurityGroupRuleAccess = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
        CertificateVisibility = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
        ElevationLevel = Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
        InterNodeCommunicationState = Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
        CertificateStoreLocation = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
        AutoUserScope = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
        Operation = Azure::Batch::Mgmt::V2017_09_01::Models::Operation
        NameAvailabilityReason = Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
        Resource = Azure::Batch::Mgmt::V2017_09_01::Models::Resource
        ProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
        FixedScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
        AutoScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
        ScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
        KeyVaultReference = Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
        AutoScaleRunError = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
        ApplicationPackage = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
        AutoScaleRun = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
        ListApplicationsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
        NetworkSecurityGroupRule = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
        BatchLocationQuota = Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
        PoolEndpointConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
        DeleteCertificateError = Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
        NetworkConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
      end

      class BatchManagementClass
        attr_reader :location, :certificate_operations, :batch_account_operations, :application_package_operations, :application_operations, :operations, :pool_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Batch::Mgmt::V2017_09_01::BatchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @location = @client_0.location
          @certificate_operations = @client_0.certificate_operations
          @batch_account_operations = @client_0.batch_account_operations
          @application_package_operations = @client_0.application_package_operations
          @application_operations = @client_0.application_operations
          @operations = @client_0.operations
          @pool_operations = @client_0.pool_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Batch/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
          end
          def task_scheduling_policy
            Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
          end
          def cloud_service_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
          end
          def linux_user_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
          end
          def user_account
            Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
          end
          def osdisk
            Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
          end
          def deployment_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
          end
          def resource_file
            Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
          end
          def metadata_item
            Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
          end
          def environment_setting
            Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
          end
          def application
            Azure::Batch::Mgmt::V2017_09_01::Models::Application
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
          end
          def user_identity
            Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
          end
          def start_task
            Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
          end
          def auto_user_specification
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
          end
          def virtual_machine_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
          end
          def application_package_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
          end
          def certificate_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
          end
          def application_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
          end
          def resize_error
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
          end
          def certificate_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
          end
          def image_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
          end
          def windows_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
          end
          def resize_operation_status
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
          end
          def application_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
          end
          def list_pools_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
          end
          def inbound_nat_pool
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
          end
          def batch_account
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
          end
          def list_certificates_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
          end
          def certificate
            Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
          end
          def pool
            Azure::Batch::Mgmt::V2017_09_01::Models::Pool
          end
          def certificate_format
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
          end
          def data_disk
            Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
          end
          def package_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
          end
          def allocation_state
            Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
          end
          def certificate_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
          end
          def certificate_create_or_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
          end
          def compute_node_deallocation_option
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
          end
          def caching_type
            Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
          end
          def storage_account_type
            Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
          end
          def pool_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
          end
          def account_key_type
            Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
          end
          def inbound_endpoint_protocol
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
          end
          def operation_display
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
          end
          def compute_node_fill_type
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
          end
          def proxy_resource
            Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
          end
          def network_security_group_rule_access
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
          end
          def certificate_visibility
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
          end
          def elevation_level
            Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
          end
          def inter_node_communication_state
            Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
          end
          def certificate_store_location
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
          end
          def auto_user_scope
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
          end
          def operation
            Azure::Batch::Mgmt::V2017_09_01::Models::Operation
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::Batch::Mgmt::V2017_09_01::Models::Resource
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
          end
          def fixed_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
          end
          def auto_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
          end
          def scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
          end
          def auto_scale_run_error
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
          end
          def application_package
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
          end
          def auto_scale_run
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
          end
          def network_security_group_rule
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
          end
          def pool_endpoint_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
          end
          def delete_certificate_error
            Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
          end
          def network_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
          end
        end
      end
    end
  end
end
