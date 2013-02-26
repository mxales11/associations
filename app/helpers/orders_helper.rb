module OrdersHelper


	def displayOrders(orders) 

		if orders.count==0

			out=

			"<table>
			<tr>
				<th>No orders</th>
				<th>#{link_to 'New Order', new_order_path}</th>
			</tr>
			</table>"

			

		else
		out = 
		"<div class = 'orders'>
			<table table-bordered>
			  <tr class = 'keys'>
			    <th>Item</th>
			    <th>Customer</th>
			    <th>Quantity</th>
			    <th>Total cost</th>
			    <th></th>
			    <th></th>
			    <th></th>
			    <th></th>
			    <th></th>
			  </tr>"

				orders.each do |order|
					out = out +	
					"<tr class = 'values'>
					    <th>#{Item.find(order.item_id).name}</th>
					    <th>#{order.customer_id}</th>
					    <th>#{order.quantity}</th>
					    <th>#{order.total_cost}</th>
					    <th>#{link_to('Show', order)}</th>
					    <th>#{link_to 'Edit', edit_order_path(order)}</th>
					    <th>#{link_to 'Destroy', order, confirm: 'Are you sure?', method: :delete}</th>					   
					</tr>"
				end
				out = out + 
				"</table><tr>
					<th>#{link_to 'New Order', new_order_path}</th>
					</tr>
			</div>"
			
		end
		out.html_safe
	end


end

