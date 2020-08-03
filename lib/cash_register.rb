class CashRegister
  attr_accessor :price, :discount, :register, :total, :items
  
  def initialize(discount = 0)
    @items = []
    @discount = discount 
    @total = 0 
  end 
  
  def total 
    @total = total 
  end 
  
  def add_item(title, price, quantity = 1)
    @items << ([title, price] * quantity)
    @total += (price * quantity)
    @price = (price * quantity)
  end 

end 
