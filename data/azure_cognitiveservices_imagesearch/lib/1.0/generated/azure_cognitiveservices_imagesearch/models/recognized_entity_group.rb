# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines a group of previously recognized entities.
    #
    class RecognizedEntityGroup

      include MsRestAzure

      # @return [Array<RecognizedEntityRegion>] The regions of the image that
      # contain entities.
      attr_accessor :recognized_entity_regions

      # @return [String] The name of the group where images of the entity were
      # also found. The following are possible groups.
      # CelebRecognitionAnnotations: Similar to CelebrityAnnotations but
      # provides a higher probability of an accurate match.
      # CelebrityAnnotations: Contains celebrities such as actors, politicians,
      # athletes, and historical figures.
      attr_accessor :name


      #
      # Mapper for RecognizedEntityGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecognizedEntityGroup',
          type: {
            name: 'Composite',
            class_name: 'RecognizedEntityGroup',
            model_properties: {
              recognized_entity_regions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'recognizedEntityRegions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecognizedEntityRegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecognizedEntityRegion'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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