class CashRegister
  attr_accessor :total, :discount, :add_item, :optional_quantity, :apply_discount
  
  def initialize(total=0, discount=20)
    @total = total
    @discount = discount
  end
  
  def add_item(title, price, optional_quantity=1)
    self.total += price * optional_quantity
  end
  
  def apply_discount
    self.discount = self.discount * 0.01
    self.total -= self.total * self.discount
    
    if discount == 20
      puts "After the discount, the total comes to $#{self.total}."
      else if discount == 0
        puts "There is no discount to apply."
      end
    end
  end
end