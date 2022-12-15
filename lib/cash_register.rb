require 'pry'
class CashRegister
attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do 
            self.items << title
        end

        def apply_discount
            self.total = self.total / self.discount
            # binding.pry
        end
    end


end

cart = CashRegister.new(20)
cart.add_item("macbook", 500)
cart.apply_discount