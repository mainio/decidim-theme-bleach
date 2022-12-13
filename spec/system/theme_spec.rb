# frozen_string_literal: true

require "spec_helper"

describe "Bleach theme", type: :system do
  let(:organization) { create(:organization) }
  let(:user) { create(:user, :confirmed, organization: organization) }

  before { switch_to_host(organization.host) }

  shared_examples "whitened theme" do
    let(:bgcolors) do
      {
        ".header .title-bar" => "rgba(255, 255, 255, 1)",
        ".header .navbar" => "rgba(237, 242, 251, 1)",
        ".footer .main-footer" => "rgba(86, 82, 100, 1)",
        ".footer .mini-footer" => "rgba(86, 82, 100, 1)",
        "#hero .hero__container .hero-cta.button" => "rgba(61, 64, 91, 1)"
      }
    end

    before do
      create :content_block, organization: organization, scope_name: :homepage, manifest_name: :hero

      visit decidim.root_path
    end

    it "displays the bleach colors" do
      bgcolors.each do |selector, bgcolor|
        color = find(selector).native.css_value("background-color")
        expect(color).to eq(bgcolor)
      end
    end
  end

  it_behaves_like "whitened theme"

  context "when logged in" do
    before { login_as user, scope: :user }

    it_behaves_like "whitened theme"
  end
end
