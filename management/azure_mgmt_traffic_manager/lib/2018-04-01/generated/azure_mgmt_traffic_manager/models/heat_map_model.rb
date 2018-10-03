# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Class representing a Traffic Manager HeatMap.
    #
    class HeatMapModel < ProxyResource

      include MsRestAzure

      # @return [DateTime] The beginning of the time window for this HeatMap,
      # inclusive.
      attr_accessor :start_time

      # @return [DateTime] The ending of the time window for this HeatMap,
      # exclusive.
      attr_accessor :end_time

      # @return [Array<HeatMapEndpoint>] The endpoints used in this HeatMap
      # calculation.
      attr_accessor :endpoints

      # @return [Array<TrafficFlow>] The traffic flows produced in this HeatMap
      # calculation.
      attr_accessor :traffic_flows


      #
      # Mapper for HeatMapModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HeatMapModel',
          type: {
            name: 'Composite',
            class_name: 'HeatMapModel',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoints: {
                required: false,
                serialized_name: 'properties.endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HeatMapEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HeatMapEndpoint'
                      }
                  }
                }
              },
              traffic_flows: {
                required: false,
                serialized_name: 'properties.trafficFlows',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrafficFlowElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrafficFlow'
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