# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevSpaces::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class KubernetesConnectionDetails < OrchestratorSpecificConnectionDetails

      include MsRestAzure


      def initialize
        @instanceType = "Kubernetes"
      end

      attr_accessor :instanceType

      # @return [String] Gets the kubeconfig for the cluster.
      attr_accessor :kube_config


      #
      # Mapper for KubernetesConnectionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Kubernetes',
          type: {
            name: 'Composite',
            class_name: 'KubernetesConnectionDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              kube_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kubeConfig',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
