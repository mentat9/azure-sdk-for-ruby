# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # Properties of the blob container, including Id, resource name, resource
    # type, Etag.
    #
    class BlobContainer < AzureEntityResource

      include MsRestAzure

      # @return [PublicAccess] Specifies whether data in the container may be
      # accessed publicly and the level of access. Possible values include:
      # 'Container', 'Blob', 'None'
      attr_accessor :public_access

      # @return [DateTime] Returns the date and time the container was last
      # modified.
      attr_accessor :last_modified_time

      # @return [LeaseStatus] The lease status of the container. Possible
      # values include: 'Locked', 'Unlocked'
      attr_accessor :lease_status

      # @return [LeaseState] Lease state of the container. Possible values
      # include: 'Available', 'Leased', 'Expired', 'Breaking', 'Broken'
      attr_accessor :lease_state

      # @return [LeaseDuration] Specifies whether the lease on a container is
      # of infinite or fixed duration, only when the container is leased.
      # Possible values include: 'Infinite', 'Fixed'
      attr_accessor :lease_duration

      # @return [Hash{String => String}] A name-value pair to associate with
      # the container as metadata.
      attr_accessor :metadata

      # @return [ImmutabilityPolicyProperties] The ImmutabilityPolicy property
      # of the container.
      attr_accessor :immutability_policy

      # @return [LegalHoldProperties] The LegalHold property of the container.
      attr_accessor :legal_hold

      # @return [Boolean] The hasLegalHold public property is set to true by
      # SRP if there are at least one existing tag. The hasLegalHold public
      # property is set to false by SRP if all existing legal hold tags are
      # cleared out. There can be a maximum of 1000 blob containers with
      # hasLegalHold=true for a given account.
      attr_accessor :has_legal_hold

      # @return [Boolean] The hasImmutabilityPolicy public property is set to
      # true by SRP if ImmutabilityPolicy has been created for this container.
      # The hasImmutabilityPolicy public property is set to false by SRP if
      # ImmutabilityPolicy has not been created for this container.
      attr_accessor :has_immutability_policy


      #
      # Mapper for BlobContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BlobContainer',
          type: {
            name: 'Composite',
            class_name: 'BlobContainer',
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
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              public_access: {
                required: false,
                serialized_name: 'properties.publicAccess',
                type: {
                  name: 'Enum',
                  module: 'PublicAccess'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              lease_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseStatus',
                type: {
                  name: 'String'
                }
              },
              lease_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseState',
                type: {
                  name: 'String'
                }
              },
              lease_duration: {
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseDuration',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              immutability_policy: {
                required: false,
                read_only: true,
                serialized_name: 'properties.immutabilityPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ImmutabilityPolicyProperties'
                }
              },
              legal_hold: {
                required: false,
                read_only: true,
                serialized_name: 'properties.legalHold',
                type: {
                  name: 'Composite',
                  class_name: 'LegalHoldProperties'
                }
              },
              has_legal_hold: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hasLegalHold',
                type: {
                  name: 'Boolean'
                }
              },
              has_immutability_policy: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hasImmutabilityPolicy',
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