class CashRegister
  attr_accessor :price, :discount, :register, :total, :items
  
  def initialize(discount = 0)
    @items = []
    @discount = discount 
    @total = 0 
  end 
  
  def total 
    @total  
  end 
  
  def add_item(title, price, quantity = 1)
    @items << ([title, price] * quantity)
    @total += (price * quantity)
    @price = (price * quantity)
  end 
  
  def apply_discount
    if discount > 0
      amount_saved = @total * (discount / 100.0)
      @total = @total - amount_saved
      return "After the discount, the total comes to $#{@total.to_i}."
    elsif discount == 0 
      return "There is no discount to apply."
    end
  end 
  
  def items 
    @all_items
  end 
end 
