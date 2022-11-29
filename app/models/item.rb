class Item < ApplicationRecord
  def self.update_quality
    all.each do |item|
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
        if item.quality > 0
          if item.name != "Sulfuras, Hand of Ragnaros"
            item.quality = item.quality - 1
          end
        end
      else
        if item.quality < 50
          item.quality = item.quality + 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
            if item.sell_in < 6
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
          end
        end
      end
      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
      end
      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
              if item.name != "Sulfuras, Hand of Ragnaros"
                item.quality = item.quality - 1
              end
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
      end
      item.save!
    end
  end

  def self.reset
    delete_all
    create!(name: "+5 Dexterity Vest", sell_in: 10, quality: 20)
    create!(name: "Aged Brie", sell_in: 2, quality: 0)
    create!(name: "Elixir of the Mongoose", sell_in: 5, quality: 7)
    create!(name: "Sulfuras, Hand of Ragnaros", sell_in: 0, quality: 80)
    create!(name: "Sulfuras, Hand of Ragnaros", sell_in: -1, quality: 80)
    create!(name: "Backstage passes to a TAFKAL80ETC concert", sell_in: 15, quality: 20)
    create!(name: "Backstage passes to a TAFKAL80ETC concert", sell_in: 10, quality: 49)
    create!(name: "Backstage passes to a TAFKAL80ETC concert", sell_in: 5, quality: 49)
    create!(name: "Conjured Mana Cake", sell_in: 3, quality: 6)
  end
end
