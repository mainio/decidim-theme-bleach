# frozen_string_literal: true

module Decidim
  module Bleach
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Bleach
    end
  end
end
