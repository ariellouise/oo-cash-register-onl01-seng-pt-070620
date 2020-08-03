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
  
  def apply_discount 
    if dicount > 0 
    discount_on_total = (@total * @discount) / 100 
      @total -= discount_on_total 
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply." 
    end 
  end 
end 