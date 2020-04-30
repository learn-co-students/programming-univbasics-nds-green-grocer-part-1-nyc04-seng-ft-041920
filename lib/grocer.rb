def find_item_by_name_in_collection(item,arr)
  arr.each do |val|
     if item == val[:item]
      return val
  end
end
nil 
end

def consolidate_cart(arr)
cart = [];
# arr2 = [];
quantity = {}
arr.each do |val|
  quantity[val[:item]] ||= {};
  if quantity[val[:item]] == 1
  quantity[val[:item]] += 1;
  else 
    quantity[val[:item]] = 1
  end
end
arr.each_with_index do |val, i|
  val[:count] = quantity[val[:item]]
  cart << val
end
cart.uniq
end

  