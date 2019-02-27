class Transfer
  # your code here
  attr_accessor :sender, :name2, :amount
  
  def initialize(sender, name2, amount)
    @sender = sender
    @name2 = name2
    @amount = amount
  end
end
