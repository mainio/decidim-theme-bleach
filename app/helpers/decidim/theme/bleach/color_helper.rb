# frozen_string_literal: true

module Decidim
  module Theme
    module Bleach
      module ColorHelper
        def determine_light(color)
          r = color[0]
          g = color[1]
          b = color[2]
          hsp = Math.sqrt((0.299 * (r * r)) + (0.587 * (g * g)) + (0.114 * (b * b)))
          if hsp > 127.5
            change_hover_color("light")
          else
            change_hover_color("dark")
          end
        end

        def change_hover_color(shade)
          hex_color = current_organization.colors["link"] || "#206cff"
          color = hex_color.gsub("#", "")
          rgb = color.scan(/../).map(&:hex)
          case shade
          when "light"
            amount = 0.5
            rgb[0] = (rgb[0].to_i * amount).round
            rgb[1] = (rgb[1].to_i * amount).round
            rgb[2] = (rgb[2].to_i * amount).round
          when "dark"
            amount = 0.3
            rgb[0] = [(rgb[0].to_i + (255 * amount)).round, 255].min
            rgb[1] = [(rgb[1].to_i + (255 * amount)).round, 255].min
            rgb[2] = [(rgb[2].to_i + (255 * amount)).round, 255].min
          end
          format("##{rgb.map { |v| format("%02x", v) }.join}") % rgb
        end
      end
    end
  end
end
