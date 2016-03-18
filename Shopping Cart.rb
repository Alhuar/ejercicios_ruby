

class Item 
	attr_reader :name, :price

  def initialize(name, price)
      @name = name
      @price = price
  end
  
  def show_price
      puts "The price of #{@name} unit is #{@price}€"
  end

  	def cost
  		price
  	end


  end


 class Houseware < Item

	def cost
		if @price > 100
			price = @price * 0.95
		else
			price = @price
		end
	   price
	end

 end

class Fruit < Item
  

  def cost
  	time = Time.now
    	if time.saturday? || time.sunday? 
    	price = @price * 0.90
    	else
    	price = @price

    end
    	price
   end

end

class Regular_food < Item

def price
	@price
end

end



class ShoppingCart
  
  def initialize
      @items = []
      @total_price = 0
  		
  end

  def add_item(item)
      @items.push(item)
  end

  def show_item
  	list = ""
  	@items.each do |item|
  		list << item.name + " "
  	end
  	puts "Your shopping list contains #{list}"
	
  end
   
  def checkout

	list = ""
  	@items.each do |item|
  		list << item.name 
  		@total_price += item.cost
  	
  	puts "#{item.name}.......#{item.cost}€"
  		
  	end
  	if @items.length > 5
  	@total_price = @total_price * 0.90
  	else
  		@total_price 
	end

	puts "TOTAL.........#{@total_price.round(2)}€"
  end

end




banana = Fruit.new('Banana', 10)
oj = Fruit.new('Orange Juice', 10)
vcleaner = Houseware.new('Vacuum Cleaner', 150)
manta = Houseware.new('Manta', 75)
rice = Regular_food.new('Rice', 1)
anchovies = Regular_food.new('Anchovies',2)


puts oj.cost
puts vcleaner.cost
puts manta.cost

alfon = ShoppingCart.new
alfon.add_item(oj)
alfon.add_item(manta)
alfon.add_item(vcleaner)
alfon.add_item(rice)
alfon.add_item(banana)
alfon.add_item(anchovies)
alfon.show_item
puts "======TOTAL======"
alfon.checkout




 	end
 end

puts date
 puts price

=end

