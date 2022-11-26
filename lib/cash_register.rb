require 'pry'
class CashRegister

    attr_accessor :discount, :total, :last_transaction, :items

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item(title, amount, quantity=1)
        self.last_transaction = amount * quantity
        self.total += self.last_transaction
        quantity.times do 
            self.items << title
        end
    end

end 

