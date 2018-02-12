# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Error body.
    #
    class Error

      include MsRestAzure

      # @return [String]
      attr_accessor :code

      # @return [String]
      attr_accessor :message


      #
      # Mapper for Error class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Error',
          type: {
            name: 'Composite',
            class_name: 'Error',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Message',
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