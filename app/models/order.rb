# bin/rails generate scaffold Order name address:text email pay_type:integer
# bin/rails generate migration add_order_to_line_item order:references
class Order < ApplicationRecord
    enum pay_type: {
        "Check" => 0, 
        "Credit card" => 1, 
        "Purchase order" => 2
    }

    has_many :line_items, dependent: :destroy
    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys

    def add_line_items_from_cart(cart)
        cart.line_items.each do |item|
            item.cart_id = nil
            line_items << item
        end
    end


end
