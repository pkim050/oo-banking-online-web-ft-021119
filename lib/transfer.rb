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
    return true if @sender.valid? && @receiver.valid?
    return false
  end
end
