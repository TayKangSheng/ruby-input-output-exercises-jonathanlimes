class BankAccount
  attr_accessor :balance, :pin

  @@totalBalance = 1000000
  @@authorized = false

  def initialize (balance, pin)
    @balance = balance
    @pin = pin
  end

  def welcome
    p "Hello there, welcome to the bank: Who are you?"
    customer = gets.chomp
    p "Please enter your pin:"
    given_pin = gets.chomp
    authorize(given_pin)
    if authorize(given_pin)
      p "Hello #{customer} with pin #{given_pin}!"
      @customer = customer
      @@authorized = true
      self.check_balance
    else
      p "Access denied. Re-enter PIN."
    end
  end

  def self.get_balance
    # Static or Class method. Calls the OBJECT, not the INSTANCE
    "total balance of the bank is: #{@@totalBalance} and my account balance is #{@balance}"
  end

  def check_balance
    # Instance method. Can be called by the instance.
    "Your account balance is #{@balance}"
    self.query
  end

  def withdraw
    if @@authorized
      p "Hello #{@customer}, how much do you want to withdraw?"
      amount = gets.chomp
      @balance -= amount.to_i
      p "Hello #{@customer}, your balance is now #{@balance}"
      self.is_done
    else
      p "You are not authorized to withdraw money"
    end
  end

  def deposit
    if @@authorized
      p "Hello #{@customer}, how much do you want to deposit?"
      amount = gets.chomp
      @balance += amount.to_i
      p "Hello #{@customer}, your balance is now #{@balance}"
      self.is_done
    else
      p "You are not authorized to deposit money"
    end
  end

  def is_done
    p "Are you done?"
    answer = gets.chomp
    if answer == 'yes'
      p 'Thank you!'
    else
      self.query
    end
  end

  def query
    p "What would you like to do? (deposit, withdraw, check_balance)"
    answer = gets.chomp
    if answer == 'deposit'
      self.deposit
    elsif answer == 'withdraw'
      self.withdraw
    elsif answer == 'check_balance'
      self.check_balance
    else
      p "That was not a valid option. Spell properly."
      self.query
    end
  end

  private

  def authorize(given_pin)
    @pin == given_pin.to_i
  end

end

assignment = BankAccount.new(10000, 1234)
assignment.welcome
