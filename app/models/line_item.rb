#bin/rails generate scaffold LineItem product:references cart:belongs_to
#bin/rails generate migration add_quantity_to_line_items quantity:integer
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  def total_price 
    product.price * quantity
  end
end
