def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  return pet_shop[:admin][:total_cash] += value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, value)
  return pet_shop[:admin][:pets_sold] += value
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end



def pets_by_breed(pet_shop, breed)
  pets = pet_shop[:pets]
  pets_filtered_by_breed = []
  for pet in pets
    pets_filtered_by_breed << pet if pet[:breed] == breed
  end
 return pets_filtered_by_breed
end

def find_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
     if pet[:name] == name
       return pet
     end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
    pets = pet_shop[:pets]
  for pet in pets
    pet_shop[:pets].delete(pet) if pet[:name] == name
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customers, value)
  return customers[:cash] -= value
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end









# def test_add_pet_to_stock
#   add_pet_to_stock(@pet_shop, @new_pet)
#   count = stock_count(@pet_shop)
#   assert_equal(7, count)
# end
#
#
#
# def add_pet_to_stock(pet_shop, new_pet)
#   pet_shop[:pets] << new_pet
# end
