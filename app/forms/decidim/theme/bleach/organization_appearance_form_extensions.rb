# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      module OrganizationAppearanceFormExtensions
        extend ActiveSupport::Concern

        included do
          attribute :link_color, String, default: "#206cff"
          attribute :footer_color, String, default: "#565264"
        end
      end
    end
  end
end
