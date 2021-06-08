# frozen_string_literal: true

require "rest-client"

module AcnhInformations
  # Scrape the informations from the 'acnhapi' api
  class Api
    BASE_URL = "http://acnhapi.com"
    CATEGORIES = %w[fish sea bugs fossils villagers icons images songs music art houseware].freeze

    def self.valid?(category, id)
      RestClient.get("#{BASE_URL}/v1/#{category.to_s}/#{id.to_s}")
      true
    rescue RestClient::NotFound
      false
    end
  end
end
