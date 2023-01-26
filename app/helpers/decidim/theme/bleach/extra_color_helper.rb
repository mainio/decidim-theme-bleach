module Decidim
  module Theme
    module Bleach
      module ExtraColorHelper

        def extra_css_colors
          if current_organization.colors["link"]
            hover = current_organization.colors["link"]
          else
            hover = "#296cff"
          end

          lighten_color(hover, 0.3)
        end
      end
    end
  end
end
