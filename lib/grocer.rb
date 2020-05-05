def find_item_by_name_in_collection(name, collection)
  #inputs: array and name of grocery item
  #returns that corresponding items hash inside the collection
  i = 0
  while i < collection.length do 
    collection[i].each do |key, value|
      if value == name 
        return collection[i]
      end
    end
    i += 1
  end
end

def consolidate_cart(cart)
  new_cart = []

  cart.each do |arr_item|
    #adds count value to original cart
    arr_item[:count] = 1

    #if item doesn't exist in new_cart, add the whole arr_item 
    if !find_item_by_name_in_collection(arr_item[:item], new_cart)
      new_cart.push(arr_item)
    
    #else - if it does exist, simply increase count by 1
    else 
     new_cart.each do |item|
      item[:count] += 1
     end
    end
  end

  pp new_cart
  return new_cart
  
end

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

consolidate_cart(unconsolidated_cart)


  