# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # Contains all the secrets of a Disk.
    #
    class DiskSecret

      include MsRestAzure

      # @return [String] Serial number of the assigned disk.
      attr_accessor :disk_serial_number

      # @return [String] Bit Locker key of the disk which can be used to unlock
      # the disk to copy data.
      attr_accessor :bit_locker_key


      #
      # Mapper for DiskSecret class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiskSecret',
          type: {
            name: 'Composite',
            class_name: 'DiskSecret',
            model_properties: {
              disk_serial_number: {
                required: false,
                read_only: true,
                serialized_name: 'diskSerialNumber',
                type: {
                  name: 'String'
                }
              },
              bit_locker_key: {
                required: false,
                read_only: true,
                serialized_name: 'bitLockerKey',
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
