class CashRegister 
  attr_accessor :total, :price, :discount, :items 
  
  def initialize(discount = 0)
    @discount = discount 
    @items = []
    @total = 0 
  end 
  
  def add_item(title, price, quanity = 1)
    @price = price * quanity 
    @total += @price 
    quanity.times do 
      @items << title 
    end 
  end 
  
end 