# frozen_string_literal: true

require_relative "lib/acnh_informations/version"

Gem::Specification.new do |spec|
  spec.name          = "acnh_informations"
  spec.version       = AcnhInformations::VERSION
  spec.authors       = ["senchuu"]
  spec.email         = ["senchuuuu@gmail.com"]

  spec.summary       = "Get fish, fossiles, villagers [...] informations from Animal Crossing New Horizons"
  spec.description   = "Get things informations from Animal Crossing New Horizons using https://acnhapi.com/. Warning: That doesn't get informations from players. Only included things."
  spec.homepage      = "https://github.com/Senchuu/AcnhInformations"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Senchuu/AcnhInformations"
  spec.metadata["changelog_uri"] = "https://github.com/Senchuu/AcnhInformations"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/*/*.rb"] + Dir["lib/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
