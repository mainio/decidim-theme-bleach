# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "decidim/bleach/version"

Gem::Specification.new do |spec|
  spec.name = "decidim-theme-bleach"
  spec.version = Decidim::Bleach::VERSION
  spec.required_ruby_version = ">= 2.7"
  spec.authors = ["Eero Lahdenperä"]
  spec.email = ["eero.lahdenpera@mainiotech.fi"]

  spec.summary = "Whitens Decidim's default dark theme"
  spec.description = "By default Decidim looks very dark (e.g. dark background in navbar). This theme overrides Decidim's css so that it replaces dark colors with light colors."
  spec.homepage = "https://github.com/mainio/decidim-theme-bleach"
  spec.license = "AGPL-3.0"

  spec.files = Dir[
    "{app,config,lib}/**/*",
    "LICENSE-AGPLv3.txt",
    "Rakefile",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "decidim-core", Decidim::Bleach::DECIDIM_VERSION

  spec.add_development_dependency "decidim-dev", Decidim::Bleach::DECIDIM_VERSION
end
