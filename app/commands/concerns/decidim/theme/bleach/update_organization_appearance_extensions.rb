# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      module UpdateOrganizationAppearanceExtensions
        extend ActiveSupport::Concern

        included do
          def colors_attributes
            {
              colors: {
                primary: form.primary_color,
                secondary: form.secondary_color,
                success: form.success_color,
                warning: form.warning_color,
                alert: form.alert_color,
                highlight: form.highlight_color,
                "highlight-alternative": form.highlight_alternative_color,
                theme: form.theme_color,
                link: form.link_color,
                footer: form.footer_color
              }
            }
          end
        end
      end
    end
  end
end
