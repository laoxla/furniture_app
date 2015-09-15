require 'csv'

class FurnitureAppController < ApplicationController

  def furniture_link
    @furnitures = []
    CSV.foreach(Rails.root + "app/data/mf_inventory.csv", headers: true) do |row|


       furniture = FurnitureItems.new
       furniture.pid = row.to_h["pid"]
       furniture.item =  row.to_h["item"]
       furniture.description = row.to_h["description"]
       furniture.price = row.to_h["price"]
       furniture.condition = row.to_h["condition"]
       furniture.dimension_w = row.to_h["dimension_w"]
       furniture.dimension_l = row.to_h["dimension_l"]
       furniture.dimension_h = row.to_h["dimension_h"]
       furniture.img_name = row.to_h["img_name"]
       furniture.quantity = row.to_h["quantity"]
       if row.to_h["quantity"].to_i > 0
       furniture.category = row.to_h["category"]


    @furnitures << furniture
  end
end
@furnitures
end
  def homepage

  end
    def list
     @furnitures = furniture_link.sort_by(& :pid)

 end

     def detail
      @furnitures = furniture_link
      @furniture = @furnitures.find {|c| c.pid == params[:pid]}
      index = @furnitures.index  @furniture
      @next_furniture_id = @furnitures[index + 1].pid


  end
end
