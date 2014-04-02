class Rolodex
  attr_reader :customers

  def initialize
    @customers = []
    @id = 1000
  end

  def add_customer(customer)
    customer.id = @id
    @customers << customer
    @id += 1
  end
end