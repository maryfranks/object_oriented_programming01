class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(deposit_amount)
    @balance = deposit_amount + @balance
  end
  def withdraw(withdraw_amount)
    @balance = @balance - withdraw_amount
  end
  def gain_interest
    @balance = @balance + (@balance * @interest_rate)
  end
end


# checking = BankAccount.new(100, 0.05)

# checking.deposit(50)
