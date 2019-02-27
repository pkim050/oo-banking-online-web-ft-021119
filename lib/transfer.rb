class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :valid
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender = BankAccount.new(@sender)
    receiver = BankAccount.new(@receiver)
    return true if sender && receiver
    return false
  end
end
