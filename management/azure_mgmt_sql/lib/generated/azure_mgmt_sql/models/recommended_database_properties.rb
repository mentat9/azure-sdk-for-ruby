# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the properties of a recommended Azure SQL Database being
    # upgraded.
    #
    class RecommendedDatabaseProperties

      include MsRestAzure

      # @return [String] The name of the Azure SQL Database being upgraded.
      attr_accessor :name

      # @return [TargetDatabaseEditions] The target edition for the Azure SQL
      # Database being upgraded. Possible values include: 'Basic',
      # 'Standard', 'Premium', 'Free', 'Stretch', 'DataWarehouse'
      attr_accessor :target_edition

      # @return [String] The target Service Level Objective for the Azure SQL
      # Database being upgraded.
      attr_accessor :target_service_level_objective


      #
      # Mapper for RecommendedDatabaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecommendedDatabaseProperties',
          type: {
            name: 'Composite',
            class_name: 'RecommendedDatabaseProperties',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              target_edition: {
                required: false,
                serialized_name: 'TargetEdition',
                type: {
                  name: 'String'
                }
              },
              target_service_level_objective: {
                required: false,
                serialized_name: 'TargetServiceLevelObjective',
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