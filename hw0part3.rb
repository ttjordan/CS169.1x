class BookInStock
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError.new("Price cannot be negative") unless price > 0 
		raise ArgumentError.new("ISBN can't be blank") unless isbn.size > 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf  "$%01.2f",@price
	end
end