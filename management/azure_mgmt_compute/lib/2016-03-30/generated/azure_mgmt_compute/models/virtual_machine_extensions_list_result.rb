# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # The List Extension operation response
    #
    class VirtualMachineExtensionsListResult

      include MsRestAzure

      # @return [Array<VirtualMachineExtension>] The list of extensions
      attr_accessor :value


      #
      # Mapper for VirtualMachineExtensionsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineExtensionsListResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtensionsListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtension'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end