require "logger"

class BankAccount
  attr_accessor :name
  attr_reader :logger, :transactions
  
  def initialize(name)
    @name = name
    @transactions = []
    @logger = Logger.new("account.txt")
  end
  
  def deposit(amount)
    logger.info "[#{name}] Deposited #{amount}"
    transactions.push(amount)
  end
  
  def withdraw(amount)
    logger.info("[#{name}] Withdrew #{amount}")
    transactions.push(-amount)
  end
end

account = BankAccount.new("Jason")
account.deposit 100
account.withdraw 50
