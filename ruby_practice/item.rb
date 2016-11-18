class Item
	attr_accessor :name
	attr_accessor :price
	attr_accessor :tax
	attr_accessor :total

	def initialize(name, price, tax)
	  @name=name
	  @price=price
	  @tax=tax
	  @total=price + tax
	end
end