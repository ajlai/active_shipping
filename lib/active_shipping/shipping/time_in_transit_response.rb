module ActiveMerchant #:nodoc:
  module Shipping

    class TimeInTransitResponse < Response
      attr_reader :times

      def initialize(success, message, params = {}, options = {})
        @times = Array(options[:estimates] || options[:times] || options[:time_estimates])
        super
      end

      alias_method :estimates, :times
      alias_method :time_estimates, :times
    end

  end
end