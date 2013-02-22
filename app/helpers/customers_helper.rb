module CustomersHelper

	def customer_name(order)
		order.customer.name unless order.customer.nil?
	end


	def display_orders(customer)

		if customer.orders.any?

			out = "<br> Orders (#{customer.orders.count})</br>
			<table class = 'table-striped table-bordered'>"
			customer.orders.each do |order|
				out = out + 
				"<tr>
				<td>#{order.item.name}</td>
				<td>#{order.quantity}</td>
				<td>#{order.total_cost}</td>
				</tr>"
			end	
		else
			"No orders"
		end
		
		out = out + "</table>"
		out.html_safe
	end

	end