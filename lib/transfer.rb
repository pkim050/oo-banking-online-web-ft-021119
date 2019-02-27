require 'pry'
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    return true if @sender.valid? && @receiver.valid?
    return false
  end
  
  def execute_transaction
    if @sender.valid? == false
      @status = "rejected"
      return "Transaction #{@status}. Please check your account balance."
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
end
