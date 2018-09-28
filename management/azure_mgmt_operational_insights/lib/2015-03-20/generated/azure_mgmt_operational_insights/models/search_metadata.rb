# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Metadata for search results.
    #
    class SearchMetadata

      include MsRestAzure

      # @return [String] The request id of the search.
      attr_accessor :search_id

      # @return [String] The search result type.
      attr_accessor :result_type

      # @return [Integer] The total number of search results.
      attr_accessor :total

      # @return [Integer] The number of top search results.
      attr_accessor :top

      # @return [String] The id of the search results request.
      attr_accessor :id

      # @return [Array<CoreSummary>] The core summaries.
      attr_accessor :core_summaries

      # @return [String] The status of the search results.
      attr_accessor :status

      # @return [DateTime] The start time for the search.
      attr_accessor :start_time

      # @return [DateTime] The time of last update.
      attr_accessor :last_updated

      # @return [String] The ETag of the search results.
      attr_accessor :e_tag

      # @return [Array<SearchSort>] How the results are sorted.
      attr_accessor :sort

      # @return [Integer] The request time.
      attr_accessor :request_time

      # @return [String] The aggregated value field.
      attr_accessor :aggregated_value_field

      # @return [String] The aggregated grouping fields.
      attr_accessor :aggregated_grouping_fields

      # @return [Integer] The sum of all aggregates returned in the result set.
      attr_accessor :sum

      # @return [Integer] The max of all aggregates returned in the result set.
      attr_accessor :max

      # @return [SearchMetadataSchema] The schema.
      attr_accessor :schema


      #
      # Mapper for SearchMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SearchMetadata',
          type: {
            name: 'Composite',
            class_name: 'SearchMetadata',
            model_properties: {
              search_id: {
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              result_type: {
                required: false,
                serialized_name: 'resultType',
                type: {
                  name: 'String'
                }
              },
              total: {
                required: false,
                serialized_name: 'total',
                type: {
                  name: 'Number'
                }
              },
              top: {
                required: false,
                serialized_name: 'top',
                type: {
                  name: 'Number'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              core_summaries: {
                required: false,
                serialized_name: 'coreSummaries',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CoreSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CoreSummary'
                      }
                  }
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated: {
                required: false,
                serialized_name: 'lastUpdated',
                type: {
                  name: 'DateTime'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              sort: {
                required: false,
                serialized_name: 'sort',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SearchSortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SearchSort'
                      }
                  }
                }
              },
              request_time: {
                required: false,
                serialized_name: 'requestTime',
                type: {
                  name: 'Number'
                }
              },
              aggregated_value_field: {
                required: false,
                serialized_name: 'aggregatedValueField',
                type: {
                  name: 'String'
                }
              },
              aggregated_grouping_fields: {
                required: false,
                serialized_name: 'aggregatedGroupingFields',
                type: {
                  name: 'String'
                }
              },
              sum: {
                required: false,
                serialized_name: 'sum',
                type: {
                  name: 'Number'
                }
              },
              max: {
                required: false,
                serialized_name: 'max',
                type: {
                  name: 'Number'
                }
              },
              schema: {
                required: false,
                serialized_name: 'schema',
                type: {
                  name: 'Composite',
                  class_name: 'SearchMetadataSchema'
                }
              }
            }
          }
        }
      end
    end
  end
end
