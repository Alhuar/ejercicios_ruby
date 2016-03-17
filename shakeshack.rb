class Milkshake
  attr_reader :ingredients
  attr_accessor :base_price

  def initialize
    @base_price = 3
    @ingredients = [ ]    
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

def name
	total_ingredientes = ""
	@ingredients.each do |ingredient|
		total_ingredientes << ingredient.name + " "
	end
	total_ingredientes
end

end


class Ingredient
	attr_reader :name, :price
  
  def initialize(name, price)
      @name = name
      @price = price
  end
end


class Shopcart

	def initialize
		@price = 0
		@order = []
	end

	def add_milkshake(milkshake)
		@order.push(milkshake)
	end

	def show_ingredients
		@order.each do |milkshake|
			puts "Your order is #{milkshake.name}milkshake"
		end
	end

	def final_price
		total = 0
		@order.each do |milkshake|
			total += milkshake.price_of_milkshake
		end
		puts "The total is #{total}€"
	end


end



chocolate = Ingredient.new('Chocolate', 1)
banana = Ingredient.new('Banana', 3)
vanila = Ingredient.new('Vainilla', 2)


alfon = Milkshake.new
alfon.add_ingredient(banana)
alfon.add_ingredient(vanila)

isa = Milkshake.new
isa.add_ingredient(chocolate)
isa.add_ingredient(banana)

shopcart1 = Shopcart.new
shopcart1.add_milkshake(alfon)
shopcart1.add_milkshake(isa)

puts alfon.name
puts alfon.price_of_milkshake
shopcart1.show_ingredients
shopcart1.final_price

