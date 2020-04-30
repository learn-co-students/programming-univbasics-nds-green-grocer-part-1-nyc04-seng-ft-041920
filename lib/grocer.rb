def find_item_by_name_in_collection(name, collection)

  collection.each do |ele, index|
    ele.each do |key, val|
      # puts val
      if val == name
        return ele
      end
    end
  end 

  return nil
   
end

def consolidate_cart(cart)
  updated_cart = Array.new 

  cart.each do |element_hash|
    element_hash[:count] = 0

    element_hash.each do |hash_key, hash_value|   
      if !updated_cart.include?(element_hash)
        updated_cart << element_hash
      end
    end
  end

  return item_counter(updated_cart, cart)
end

def item_counter(new_cart, old_cart)
  new_cart.each do |element_newcart|
    old_cart.each do |element_oldcart|
      element_newcart.each do |updated_key, updated_value|
        element_oldcart.each do |old_key, old_value|
          if updated_key == :item && updated_value == old_value
            element_newcart[:count] += 1
          end
        end
      end
    end
  end
end


  