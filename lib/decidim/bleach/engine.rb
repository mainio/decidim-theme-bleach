# frozen_string_literal: true

module Decidim
  module Bleach
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Bleach

      initializer "decidim_bleach.assets" do |app|
        app.config.assets.precompile += %w(decidim_bleach_manifest.css)
      end
    end
  end
end
