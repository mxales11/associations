module CustomersHelper

	def customer_name(order)
		order.customer.name unless order.customer.nil?
	end


	def display_order_header(customer)

		if customer.orders.count==0

			out="<br>No orders</br>"

		else
			out = "<br>Orders: </br>"

		end
		out.html_safe
	end
end