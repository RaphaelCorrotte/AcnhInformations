# frozen_string_literal: true

require_relative "api" unless defined?(AcnhInformations::API)

module AcnhInformations
  # Some tools for the project
  class Api
    ##
    # Get a thing by an approximative name
    # @param [String] category The category to get the object
    # @param [String] name the approximative name
    # @return [Hash, Boolean] False if the program didn't find anything, or the thing hash
    def self.get_by_name(category, name)
      result = false
      return false unless valid?(category.to_s)

      scrape(category.to_s).each do |element|
        element[1][:name].each_value do |language_name|
          result = element[1] if language_name.downcase.match(/#{name.to_s.downcase}/)
          break if result
        end
      end
      result
    end
  end
end
