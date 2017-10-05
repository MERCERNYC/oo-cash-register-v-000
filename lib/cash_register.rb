  require 'pry'

  class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize (discount = 0)
      @total = 0
      @discount = discount
      @items = []
  end

  def add_item(title, price, quantity = 1)
      self.total += price * quantity
      quantity.times do
      items << title
    end
      self.last_transaction = amount * quantity
  end

  def apply_discount
    #binding.pry
    if !discount
      "There is no discount to apply."
    else
      @total = @total - (@total * discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
      self.total = self.total - self.last_transaction
  end

 end
