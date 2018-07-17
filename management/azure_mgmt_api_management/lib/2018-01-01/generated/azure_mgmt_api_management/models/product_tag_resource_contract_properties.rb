# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Product profile.
    #
    class ProductTagResourceContractProperties < ProductEntityBaseParameters

      include MsRestAzure

      # @return [String] Identifier of the product in the form of
      # /products/{productId}
      attr_accessor :id

      # @return [String] Product name.
      attr_accessor :name


      #
      # Mapper for ProductTagResourceContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProductTagResourceContractProperties',
          type: {
            name: 'Composite',
            class_name: 'ProductTagResourceContractProperties',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              terms: {
                required: false,
                serialized_name: 'terms',
                type: {
                  name: 'String'
                }
              },
              subscription_required: {
                required: false,
                serialized_name: 'subscriptionRequired',
                type: {
                  name: 'Boolean'
                }
              },
              approval_required: {
                required: false,
                serialized_name: 'approvalRequired',
                type: {
                  name: 'Boolean'
                }
              },
              subscriptions_limit: {
                required: false,
                serialized_name: 'subscriptionsLimit',
                type: {
                  name: 'Number'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'ProductState'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
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