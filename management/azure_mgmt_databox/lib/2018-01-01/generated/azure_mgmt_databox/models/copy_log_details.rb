# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # Details for log generated during copy.
    #
    class CopyLogDetails

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["DataBox"] = "DataBoxAccountCopyLogDetails"
      @@discriminatorMap["DataBoxDisk"] = "DataBoxDiskCopyLogDetails"
      @@discriminatorMap["DataBoxHeavy"] = "DataBoxHeavyAccountCopyLogDetails"

      def initialize
        @copyLogDetailsType = "CopyLogDetails"
      end

      attr_accessor :copyLogDetailsType


      #
      # Mapper for CopyLogDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CopyLogDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'copyLogDetailsType',
            uber_parent: 'CopyLogDetails',
            class_name: 'CopyLogDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
