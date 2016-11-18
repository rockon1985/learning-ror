require './item'

$SALES_TAX_BASIC = 10
$SALES_TAX_IMPORT = 5

def get_items
	puts "Enter Number of items"
	number_of_items = gets.to_i
	puts "Enter purchased items"
	items = Array.new
	number_of_items.times do |i|
		splitted_str = gets.split("at")
		price = splitted_str[1].strip().to_f
		name = splitted_str[0]
		tax = (price * $SALES_TAX_BASIC/100)
		if name.downcase().include? 'imported'
			tax += (price * $SALES_TAX_IMPORT/100)
		end
	  items.push(Item.new(name, price, tax))
	end
	return items
end

def show_item_taxes (items = [])
	total_sum, tax_sum = 0, 0
	items.each do |item|
		puts "#{item.name} : #{item.total}"
		total_sum += item.total
		tax_sum += item.tax
	end
	puts "Sales Taxes: #{tax_sum}"
	puts "Total: #{total_sum}"
end

#flow starts here
entered_items = get_items
show_item_taxes(entered_items)