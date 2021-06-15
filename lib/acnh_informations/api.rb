# frozen_string_literal: true

require "rest-client"
require "json"

module AcnhInformations
  # Scrape informations from 'acnhapi' api
  class Api
    # The base URL to scrape
    BASE_URL = "https://acnhapi.com"
    # All available categories
    CATEGORIES = %w[fish sea bugs fossils villagers icons images songs music art houseware].freeze

    ##
    # Verify if the object exists
    #
    # @param [Symbol, StringIO] category The category to find the object
    # @param id [Symbol, StringIO, NilClass] The id to get
    # @return [Boolean] True or False, if the wanted research exists
    def self.valid?(category, id = nil)
      RestClient.get("#{BASE_URL}/v1/#{category.to_s}/#{id ? id.to_s.ascii_only? ? id.to_s : "" : ""}")
      true
    rescue RestClient::NotFound
      false
    end

    ##
    # Scrape informations from API
    #
    # @param [Symbol, StringIO] category The category to find the object
    # @param id [Symbol, StringIO, NilClass] The id to get
    # @return [Object] The result as a Hash
    # @see Api#valid?
    def self.scrape(category, id = nil)
      return false unless valid?(category, id)

      JSON.parse(RestClient.get("#{BASE_URL}/v1/#{category.to_s}/#{id ? id.to_s : ""}"), :symbolize_names => true)
    end
  end
end
