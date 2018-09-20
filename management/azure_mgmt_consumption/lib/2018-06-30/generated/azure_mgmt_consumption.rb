# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-06-30/generated/azure_mgmt_consumption/module_definition'
require 'ms_rest_azure'

module Azure::Consumption::Mgmt::V2018_06_30
  autoload :UsageDetails,                                       '2018-06-30/generated/azure_mgmt_consumption/usage_details.rb'
  autoload :Marketplaces,                                       '2018-06-30/generated/azure_mgmt_consumption/marketplaces.rb'
  autoload :Balances,                                           '2018-06-30/generated/azure_mgmt_consumption/balances.rb'
  autoload :ReservationsSummaries,                              '2018-06-30/generated/azure_mgmt_consumption/reservations_summaries.rb'
  autoload :ReservationsDetails,                                '2018-06-30/generated/azure_mgmt_consumption/reservations_details.rb'
  autoload :ReservationRecommendations,                         '2018-06-30/generated/azure_mgmt_consumption/reservation_recommendations.rb'
  autoload :Budgets,                                            '2018-06-30/generated/azure_mgmt_consumption/budgets.rb'
  autoload :PriceSheet,                                         '2018-06-30/generated/azure_mgmt_consumption/price_sheet.rb'
  autoload :CostTags,                                           '2018-06-30/generated/azure_mgmt_consumption/cost_tags.rb'
  autoload :Tags,                                               '2018-06-30/generated/azure_mgmt_consumption/tags.rb'
  autoload :Forecasts,                                          '2018-06-30/generated/azure_mgmt_consumption/forecasts.rb'
  autoload :Operations,                                         '2018-06-30/generated/azure_mgmt_consumption/operations.rb'
  autoload :ConsumptionManagementClient,                        '2018-06-30/generated/azure_mgmt_consumption/consumption_management_client.rb'

  module Models
    autoload :Notification,                                       '2018-06-30/generated/azure_mgmt_consumption/models/notification.rb'
    autoload :MeterDetails,                                       '2018-06-30/generated/azure_mgmt_consumption/models/meter_details.rb'
    autoload :CurrentSpend,                                       '2018-06-30/generated/azure_mgmt_consumption/models/current_spend.rb'
    autoload :UsageDetailsListResult,                             '2018-06-30/generated/azure_mgmt_consumption/models/usage_details_list_result.rb'
    autoload :BudgetTimePeriod,                                   '2018-06-30/generated/azure_mgmt_consumption/models/budget_time_period.rb'
    autoload :MarketplacesListResult,                             '2018-06-30/generated/azure_mgmt_consumption/models/marketplaces_list_result.rb'
    autoload :Filters,                                            '2018-06-30/generated/azure_mgmt_consumption/models/filters.rb'
    autoload :BalancePropertiesAdjustmentDetailsItem,             '2018-06-30/generated/azure_mgmt_consumption/models/balance_properties_adjustment_details_item.rb'
    autoload :ErrorResponse,                                      '2018-06-30/generated/azure_mgmt_consumption/models/error_response.rb'
    autoload :OperationListResult,                                '2018-06-30/generated/azure_mgmt_consumption/models/operation_list_result.rb'
    autoload :ErrorDetails,                                       '2018-06-30/generated/azure_mgmt_consumption/models/error_details.rb'
    autoload :Operation,                                          '2018-06-30/generated/azure_mgmt_consumption/models/operation.rb'
    autoload :ReservationRecommendation,                          '2018-06-30/generated/azure_mgmt_consumption/models/reservation_recommendation.rb'
    autoload :BudgetsListResult,                                  '2018-06-30/generated/azure_mgmt_consumption/models/budgets_list_result.rb'
    autoload :Tag,                                                '2018-06-30/generated/azure_mgmt_consumption/models/tag.rb'
    autoload :CostTagProperties,                                  '2018-06-30/generated/azure_mgmt_consumption/models/cost_tag_properties.rb'
    autoload :BalancePropertiesNewPurchasesDetailsItem,           '2018-06-30/generated/azure_mgmt_consumption/models/balance_properties_new_purchases_details_item.rb'
    autoload :QueryOptions,                                       '2018-06-30/generated/azure_mgmt_consumption/models/query_options.rb'
    autoload :ReservationSummariesListResult,                     '2018-06-30/generated/azure_mgmt_consumption/models/reservation_summaries_list_result.rb'
    autoload :PriceSheetProperties,                               '2018-06-30/generated/azure_mgmt_consumption/models/price_sheet_properties.rb'
    autoload :ReservationRecommendationsListResult,               '2018-06-30/generated/azure_mgmt_consumption/models/reservation_recommendations_list_result.rb'
    autoload :ProxyResource,                                      '2018-06-30/generated/azure_mgmt_consumption/models/proxy_resource.rb'
    autoload :Resource,                                           '2018-06-30/generated/azure_mgmt_consumption/models/resource.rb'
    autoload :ForecastPropertiesConfidenceLevelsItem,             '2018-06-30/generated/azure_mgmt_consumption/models/forecast_properties_confidence_levels_item.rb'
    autoload :OperationDisplay,                                   '2018-06-30/generated/azure_mgmt_consumption/models/operation_display.rb'
    autoload :ResourceAttributes,                                 '2018-06-30/generated/azure_mgmt_consumption/models/resource_attributes.rb'
    autoload :ReservationDetailsListResult,                       '2018-06-30/generated/azure_mgmt_consumption/models/reservation_details_list_result.rb'
    autoload :ForecastsListResult,                                '2018-06-30/generated/azure_mgmt_consumption/models/forecasts_list_result.rb'
    autoload :UsageDetail,                                        '2018-06-30/generated/azure_mgmt_consumption/models/usage_detail.rb'
    autoload :Marketplace,                                        '2018-06-30/generated/azure_mgmt_consumption/models/marketplace.rb'
    autoload :Balance,                                            '2018-06-30/generated/azure_mgmt_consumption/models/balance.rb'
    autoload :ReservationSummary,                                 '2018-06-30/generated/azure_mgmt_consumption/models/reservation_summary.rb'
    autoload :ReservationDetail,                                  '2018-06-30/generated/azure_mgmt_consumption/models/reservation_detail.rb'
    autoload :TagsResult,                                         '2018-06-30/generated/azure_mgmt_consumption/models/tags_result.rb'
    autoload :Budget,                                             '2018-06-30/generated/azure_mgmt_consumption/models/budget.rb'
    autoload :CostTag,                                            '2018-06-30/generated/azure_mgmt_consumption/models/cost_tag.rb'
    autoload :PriceSheetResult,                                   '2018-06-30/generated/azure_mgmt_consumption/models/price_sheet_result.rb'
    autoload :Forecast,                                           '2018-06-30/generated/azure_mgmt_consumption/models/forecast.rb'
    autoload :BillingFrequency,                                   '2018-06-30/generated/azure_mgmt_consumption/models/billing_frequency.rb'
    autoload :CategoryType,                                       '2018-06-30/generated/azure_mgmt_consumption/models/category_type.rb'
    autoload :TimeGrainType,                                      '2018-06-30/generated/azure_mgmt_consumption/models/time_grain_type.rb'
    autoload :OperatorType,                                       '2018-06-30/generated/azure_mgmt_consumption/models/operator_type.rb'
    autoload :Grain,                                              '2018-06-30/generated/azure_mgmt_consumption/models/grain.rb'
    autoload :ChargeType,                                         '2018-06-30/generated/azure_mgmt_consumption/models/charge_type.rb'
    autoload :Bound,                                              '2018-06-30/generated/azure_mgmt_consumption/models/bound.rb'
    autoload :Datagrain,                                          '2018-06-30/generated/azure_mgmt_consumption/models/datagrain.rb'
  end
end