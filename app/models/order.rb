# bin/rails generate scaffold Order name address:text email pay_type:integer
# bin/rails generate migration add_order_to_line_item order:references
class Order < ApplicationRecord
    enum pay_type: {
        "Check" => 0, 
        "Credit card" => 1, 
        "Purchase order" => 2
        }
end
