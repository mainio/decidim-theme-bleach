# frozen_string_literal: true

require "spec_helper"

module Decidim
  module Theme
    module Bleach
      describe ExtraColorHelper do
        let(:helper) do
          Class.new(ActionView::Base) do
            include ColorHelper
            include ExtraColorHelper
          end.new(ActionView::LookupContext.new(ActionController::Base.view_paths), {}, [])
        end
        let(:organization) { create(:organization) }

        describe "#extra_css_colors" do
          before do
            allow(helper).to receive(:current_organization).and_return(organization)
          end

          context "when no organization link color" do
            it "returns the default value" do
              expect(helper.extra_css_colors).to eq("#6db9ff")
            end
          end

          context "when organization has link color" do
            let(:organization) { create(:organization, colors: { "link" => "#ffa1d0" }) }

            it "returns the given value" do
              expect(helper.extra_css_colors).to eq("#805168")
            end
          end

          context "when color is dark" do
            let(:organization) { create(:organization, colors: { "link" => "#1e0063" }) }

            it "returns a lighter shade" do
              expect(helper.extra_css_colors).to eq("#6b4db0")
            end
          end

          context "when color is light" do
            let(:organization) { create(:organization, colors: { "link" => "#ace3f2" }) }

            it "returns a darker shade" do
              expect(helper.extra_css_colors).to eq("#567279")
            end
          end
        end
      end
    end
  end
end
