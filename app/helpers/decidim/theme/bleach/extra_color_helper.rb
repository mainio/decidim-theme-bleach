# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      module ExtraColorHelper
        def extra_css_colors
          color = if current_organization.colors["link"]
                    current_organization.colors["link"].match(/^#(..)(..)(..)$/).captures.map(&:hex)
                  else
                    [32, 108, 255]
                  end

          determine_light(color)
        end
      end
    end
  end
end
