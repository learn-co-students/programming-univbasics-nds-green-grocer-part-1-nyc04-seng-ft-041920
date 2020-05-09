def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs.
 count = 0
 while count < collection.length do
   if name == collection[count][:item]
     return collection[count]
   elsif name == nil
     return nil
   end
   count+=1
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |element|
  element[:count] = 1
    if !find_item_by_name_in_collection(element[:item], new_cart)
      new_cart << element
    else
     new_cart.each do |item|
      item[:count] += 1
     end
    end
  end
  return new_cart
end
