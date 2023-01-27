# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      module ExtraColorHelper
        def extra_css_colors
          rgb = current_organization.colors["link"].match(/^#(..)(..)(..)$/).captures.map(&:hex)
          color = rgb || [32, 108, 255]

          determine_light(color)
        end
      end
    end
  end
end
