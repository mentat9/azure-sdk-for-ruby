# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # This class represents the task details for an automation runbook.
    #
    class AutomationRunbookTaskDetails < TaskTypeDetails

      include MsRestAzure


      def initialize
        @instanceType = "AutomationRunbookTaskDetails"
      end

      attr_accessor :instanceType

      # @return [String] The recovery plan task name.
      attr_accessor :name

      # @return [String] The cloud service of the automation runbook account.
      attr_accessor :cloud_service_name

      # @return [String] The subscription Id of the automation runbook account.
      attr_accessor :subscription_id

      # @return [String] The automation account name of the runbook.
      attr_accessor :account_name

      # @return [String] The runbook Id.
      attr_accessor :runbook_id

      # @return [String] The runbook name.
      attr_accessor :runbook_name

      # @return [String] The job Id of the runbook execution.
      attr_accessor :job_id

      # @return [String] The execution output of the runbook.
      attr_accessor :job_output

      # @return [Boolean] A value indicating whether it is a primary side
      # script or not.
      attr_accessor :is_primary_side_script


      #
      # Mapper for AutomationRunbookTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutomationRunbookTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'AutomationRunbookTaskDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              cloud_service_name: {
                required: false,
                serialized_name: 'cloudServiceName',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                required: false,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              runbook_id: {
                required: false,
                serialized_name: 'runbookId',
                type: {
                  name: 'String'
                }
              },
              runbook_name: {
                required: false,
                serialized_name: 'runbookName',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                required: false,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              job_output: {
                required: false,
                serialized_name: 'jobOutput',
                type: {
                  name: 'String'
                }
              },
              is_primary_side_script: {
                required: false,
                serialized_name: 'isPrimarySideScript',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
