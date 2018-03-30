# company control

# -- define variables

Seller  = Struct.new(:id, :name, :salary)
Sale    = Struct.new(:seller_id, :month, :value)

sellers = Hash.new(Seller.new)
sales   = [] # lines -> seller; column -> sale

# -- define methods

# register a new salesman
def register_seller(sellers, sales)
  puts "\nSeller's ID?"
  seller_id = Integer(gets)

	new_seller ||= sellers[seller_id]
  if new_seller.id.nil?
    new_seller.id = seller_id
    puts "\nSeller's name?"
		new_seller.name    = gets.string
    puts "\nSeller's salary?"
    new_seller.salary = Float(gets)

    init_sale_for_seller(sales, new_seller.id)

    sellers[new_seller.id] = new_seller
	else
		puts "Seller with id #{new_seller.id} already exists."
	end
end

def init_sale_for_seller(sales, seller_id)
  sales[seller_id] = Array.new(12, 0);
end

# register seller sale
def register_seller_sale(sales)
  sale           = Sale.new
  puts "\nSeller's ID?"
  sale.seller_id = Integer(gets)
  puts "\nSale's month?"
  sale.month     = Integer(gets)

  if sales[sale.seller_id][sale.month] > 0
    puts "A sale has already been registered for this month"
  else
    puts "\nSale's value?"
    sale.value     = Float(gets)
    sales[sale.seller_id][sale.month] = sale.value
  end
end

# check sales of a seller
def total_sales_of_seller(sales)
  puts "\nSeller's ID?"
  seller_id  = Integer(gets)

  if sales[seller_id].nil?
    puts "No sale for this seller."
  else
    total_sum = sales[seller_id].inject(0) do |month|
      puts month
      0
    end
  end

end

# show menu options
def show_options
	puts 'Type:'
	puts '1 - Register Seller', '2 - Register Sale for Seller'
	puts '3 - Check Sales of Seller', '0 - Exit'
	gets.to_i
end

# -- main

option = 0

until option.nil?
  option = 1
  # option = show_options
  case option
  when 1
    register_seller(sellers, sales)
  when 2
    register_seller_sale(sales)
  when 3
    total_sales_of_seller(sales)
  else
    puts 'OK! Bye then.'
    option = nil
  end
end