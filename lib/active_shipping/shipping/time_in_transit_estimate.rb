module ActiveMerchant #:nodoc:
  module Shipping #:nodoc:

    class TimeInTransitEstimate
      attr_reader :origin         # Location objects
      attr_reader :destination
      attr_reader :carrier        # Carrier.name ('USPS', 'FedEx', etc.)
      attr_reader :service_name   # name of service ("First Class Ground", etc.)
      attr_reader :business_days

      def initialize(origin, destination, carrier, service_name, options={})
        @origin, @destination, @carrier, @service_name = origin, destination, carrier, service_name
        @business_days = options[:business_days]
      end
    end
  end
end
