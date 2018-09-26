# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotCentral::Mgmt::V2018_09_01
  module Models
    #
    # Input values.
    #
    class OperationInputs

      include MsRestAzure

      # @return [String] The name of the IoT Central application instance to
      # check.
      attr_accessor :name


      #
      # Mapper for OperationInputs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationInputs',
          type: {
            name: 'Composite',
            class_name: 'OperationInputs',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[a-z0-9-]{1,63}$'
                },
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
