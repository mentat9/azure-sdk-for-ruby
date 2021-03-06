# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # A file containing a set of parameter values for an ARM template.
    #
    class ParametersValueFileInfo

      include MsRestAzure

      # @return [String] File name.
      attr_accessor :file_name

      # @return Contents of the file.
      attr_accessor :parameters_value_info


      #
      # Mapper for ParametersValueFileInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParametersValueFileInfo',
          type: {
            name: 'Composite',
            class_name: 'ParametersValueFileInfo',
            model_properties: {
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileName',
                type: {
                  name: 'String'
                }
              },
              parameters_value_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parametersValueInfo',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
