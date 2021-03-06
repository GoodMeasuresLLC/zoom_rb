# frozen_string_literal: true

module Zoom
  module Clients
    class OAuth < Zoom::Client
      def initialize(config)
        Utils.require_params(%i[access_token], config)
        config.each { |k, v| instance_variable_set("@#{k}", v) }
        self.class.default_timeout(@timeout)
      end

      def access_token
        @access_token
      end
    end

  end

end


