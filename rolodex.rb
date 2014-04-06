class Rolodex
  attr_reader :customers 

  def initialize
    @customers = []
    @id = 1000
  end


#customer = @@rolodex.find(1000)


  def add_customer(customer)
    customer.id = @id
    @customers << customer
    @id += 1
  end

  def find(customer_id)
    @customers.find {|customer| customer.id == customer.id}
   end

  def remove_customer(customer)
    @customers.delete(customer)
  end
end
