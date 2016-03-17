class MilkShake
  attr_accessor :base_price
  attr_reader :ingredients
  
  def initialize
    @base_price = 3
    @ingredients = []    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
	def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  		@ingredients.each do |ingredient|
   	 total_price_of_milkshake += ingredient.price
  		end
  #return  our total price to whoever called for it
   total_price_of_milkshake
	end

end



class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShopShake
	attr_reader :order, :final_price

	def initialize
		@order = []
		@final_price = 0
	end

	def add_milkshake(milkshake)
		@order.push(milkshake)
	end

	def show_order
		comanda = ""
		@order.each do |milkshake|
			comanda << "#{milkshake}"
		end
		
		puts "Su comanda contiene #{comanda}"
	end	

	def final_price
		total = 0
		@order.each do |milkshake|
			total += milkshake.price_of_milkshake
		end
		puts "El precio a pagar es: #{total} euros"
	end


	
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

shopcart1 = ShopShake.new
alfon_milkshake = MilkShake.new
vanila = Ingredient.new('Vanila', 3)
strawberry = Ingredient.new('Strawberry', 4)
alfon_milkshake.add_ingredient(vanila)
alfon_milkshake.add_ingredient(strawberry)
shopcart1.add_milkshake(alfon_milkshake)
shopcart1.add_milkshake(nizars_milkshake)

shopcart1.show_order
shopcart1.final_price


