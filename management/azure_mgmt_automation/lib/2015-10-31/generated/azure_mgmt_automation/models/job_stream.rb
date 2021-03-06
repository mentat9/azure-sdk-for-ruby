# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the job stream.
    #
    class JobStream

      include MsRestAzure

      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id

      # @return [String] Gets or sets the id of the job stream.
      attr_accessor :job_stream_id

      # @return [DateTime] Gets or sets the creation time of the job.
      attr_accessor :time

      # @return [JobStreamType] Gets or sets the stream type. Possible values
      # include: 'Progress', 'Output', 'Warning', 'Error', 'Debug', 'Verbose',
      # 'Any'
      attr_accessor :stream_type

      # @return [String] Gets or sets the stream text.
      attr_accessor :stream_text

      # @return [String] Gets or sets the summary.
      attr_accessor :summary

      # @return Gets or sets the values of the job stream.
      attr_accessor :value


      #
      # Mapper for JobStream class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobStream',
          type: {
            name: 'Composite',
            class_name: 'JobStream',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              job_stream_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobStreamId',
                type: {
                  name: 'String'
                }
              },
              time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.time',
                type: {
                  name: 'DateTime'
                }
              },
              stream_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamType',
                type: {
                  name: 'String'
                }
              },
              stream_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamText',
                type: {
                  name: 'String'
                }
              },
              summary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.summary',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
