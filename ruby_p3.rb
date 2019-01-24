# class BankAccount
class BankAccount
  attr_accessor :id, :amount
  def initialize(id, amount)
    @id = id
    @amount = amount
  end
end
acct1 = BankAccount.new(213, 300)
acct2 = BankAccount.new(22, 100)
acct3 = BankAccount.new(222, 500)
accts = [acct1, acct2, acct3]
# puts acct1.inspect
# puts acct2.inspect
# puts acct3.inspect
total_sum = 0
accts.each do |each_acct|
  total_sum += each_acct.amount
end
puts total_sum
