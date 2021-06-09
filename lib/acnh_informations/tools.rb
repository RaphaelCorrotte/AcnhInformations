# frozen_string_literal: true

require_relative "api" unless defined?(AcnhInformations::API)

module AcnhInformations
  # Some tools for the project
  class Api
    def self.get_by_name(category, name)
      return false unless valid?(category.to_s)

      scrape(category.to_s).each do |element|
        element[1][:name].each_value do |_name|
          return element[1] if _name.match(/#{name.to_s}/)
        end
      end
    end
  end
end
