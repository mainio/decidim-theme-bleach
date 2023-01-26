# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      class Engine < ::Rails::Engine
        isolate_namespace Decidim::Theme::Bleach

        initializer "decidim_theme-bleach.add_customizations", after: "decidim.action_controller" do
          config.to_prepare do
            Decidim::ApplicationHelper.include(Decidim::Theme::Bleach::ColorHelper, Decidim::Theme::Bleach::ExtraColorHelper)
            DeviseHelper.include(Decidim::Theme::Bleach::ColorHelper, Decidim::Theme::Bleach::ExtraColorHelper)
            Decidim::Admin::UpdateOrganizationAppearance.include(Decidim::Theme::Bleach::UpdateOrganizationAppearanceExtensions)
            Decidim::Admin::OrganizationAppearanceForm.include(Decidim::Theme::Bleach::OrganizationAppearanceFormExtensions)
          end
        end
      end
    end
  end
end
