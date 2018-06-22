# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # A stored credential that can be used by a job to connect to target
    # databases.
    #
    class JobCredential < ProxyResource

      include MsRestAzure

      # @return [String] The credential user name.
      attr_accessor :username

      # @return [String] The credential password.
      attr_accessor :password


      #
      # Mapper for JobCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobCredential',
          type: {
            name: 'Composite',
            class_name: 'JobCredential',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              username: {
                required: true,
                serialized_name: 'properties.username',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: true,
                serialized_name: 'properties.password',
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