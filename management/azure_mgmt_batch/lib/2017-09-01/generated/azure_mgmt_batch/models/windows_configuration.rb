# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Windows operating system settings to apply to the virtual machine.
    #
    #
    class WindowsConfiguration

      include MsRestAzure

      # @return [Boolean] Whether automatic updates are enabled on the virtual
      # machine. If omitted, the default value is true.
      attr_accessor :enable_automatic_updates


      #
      # Mapper for WindowsConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WindowsConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WindowsConfiguration',
            model_properties: {
              enable_automatic_updates: {
                required: false,
                serialized_name: 'enableAutomaticUpdates',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
