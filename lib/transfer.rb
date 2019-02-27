require 'pry'
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
    #sender = BankAccount.new(@sender)
    #receiver = BankAccount.new(@receiver)
    #binding.pry
    return true if BankAccount.new(@sender).valid? && BankAccount.new(@receiver).valid?
    return false
  end
end
