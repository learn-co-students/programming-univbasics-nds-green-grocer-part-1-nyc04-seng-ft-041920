def find_item_by_name_in_collection(name, collection)
  collection.each do |val|
    if val[:item] == name
      return val
    end
  end
  return nil
end

# This passes...
# def consolidate_cart(cart)
#   arr = Array.new
#   cart.each do |element| # iterate through arr
#     if cart.count(element) == 1
#       element[:count] = cart.count(element)
#     elsif cart.count(element) > 1
#       element[:count] = cart.count(element)
#     end
#     arr << element
#   end
#   return arr
# end

# But this is *not* exactly what's supposed to return
# {:item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>1}
# {:item=>"KALE", :price=>3.0, :clearance=>false, :count=>1}
# {:item=>"BLACK_BEANS", :price=>2.5, :clearance=>false, :count=>1}
# {:item=>"ALMONDS", :price=>9.0, :clearance=>false, :count=>1}
# {:item=>"TEMPEH", :price=>3.0, :clearance=>true, :count=>1}
# {:item=>"CHEESE", :price=>6.5, :clearance=>false, :count=>1}
# {:item=>"BEER", :price=>13.0, :clearance=>false, :count=>1}
# {:item=>"PEANUTBUTTER", :price=>3.0, :clearance=>true, :count=>1}
# {:item=>"BEETS", :price=>2.5, :clearance=>false, :count=>2}
# {:item=>"BEETS", :price=>2.5, :clearance=>false, :count=>1} <- this extra shouldn't be here
# The duplicate hashes still find their way into the array.

# TAKE 2 -------------------------------------------------------------------------
# arr << element unless element[:count] == 1 # if the count is 1, it won't go in the array
# arr << element unless element[:item] == "BEETS" # if the item is beets, it won't go into the array
# what condition is true to check if element in arr?

def consolidate_cart(cart)
  arr = Array.new # it needs to return an array of hashes
  cart.each do |element| # iterate through arr
    if !find_item_by_name_in_collection(element[:item], arr) # if item not in arr
      element[:count] = cart.count(element)
      arr << element
    end
  end
  return arr
end
