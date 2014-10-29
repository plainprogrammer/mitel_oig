require 'singleton'

module Mitel
  module OIG
    class Configuration
      include Singleton

      def self.set(option, value)
        instance.set(option, value)
        instance
      end

      def set(option, value)
        options
        @options[option.to_sym] = value
        setup_accessors(option)
        self
      end

      def self.clear(option)
        instance.clear(option)
        instance
      end

      def clear(option)
        options
        @options[option.to_sym] = nil
        self
      end

      def self.options
        instance.options
      end

      def options
        @options ||= {}
      end

      def self.method_missing(method_sym, *arguments, &block)
        instance.send(method_sym, arguments, block)
      end

      def method_missing(method_sym, *arguments, &block)
        options[method_sym]
      end
    end
  end
end