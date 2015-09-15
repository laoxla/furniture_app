class FurnitureItems
  attr_accessor :pid, :item,:description, :price, :condition, :dimension_w, :dimension_l,:dimension_h, :img_name, :quantity, :category, :clearance, :pay

# def names
#   @name = :item
# @name = furniture.name
#     end
 def clear
if  @condition == "good"
  @pay = @price.to_i * 0.90
  "Clearance price: $#{@pay} (10% off)"
elsif @condition == "average"
  @pay = @price.to_i * 0.80
  "Clearance price: $#{@pay} (20% off)"
end
end

def clearance
  if @condition == "good"
    "Clearance Item"
  elsif @condition == "average"
    "Clearance Item"
end
  end
end
