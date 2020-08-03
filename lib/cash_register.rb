class CashRegister 
  attr_accessor :total, :price, :discount, :items 
  
  def initialize(discount = 0)
    @discount = discount 
    @items = []
    @total = 0 
  end 
  
  def 