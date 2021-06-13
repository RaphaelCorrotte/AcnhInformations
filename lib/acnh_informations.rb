# frozen_string_literal: true

require_relative "acnh_informations/version"
require_relative "acnh_informations/api"
require_relative "acnh_informations/tools"

# The main module
module AcnhInformations
end

p AcnhInformations::Api.get_by_name(:fish, "bouv")
