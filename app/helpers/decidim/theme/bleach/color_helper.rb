module Decidim
  module Theme
    module Bleach
      module ColorHelper
        def lighten_color(hex_color, amount)
          hex_color = hex_color.gsub!('#','')
          rgb = hex_color.scan(/../).map {|color| color.hex}
          rgb[0] = [(rgb[0].to_i + 255 * amount).round, 255].min
          rgb[1] = [(rgb[1].to_i + 255 * amount).round, 255].min
          rgb[2] = [(rgb[2].to_i + 255 * amount).round, 255].min
          "#%02x%02x%02x" % rgb
        end
      end
    end
  end
end
