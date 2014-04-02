class Customer

  @@counter = 1000
  attr_accessor :id, :first_name, :last_name, :email, :notes

  def initialize(first_name, last_name, email, notes)
    @id = Customer.get_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
  end

  def to_s
    "Customer ID: #{id}\nCustomer Name: #{@first_name} #{last_name}\nEmail Address: #{email}\nNotes: #{notes}\n "
  end

  def self.get_id
    @@counter += 1
    return @@counter 
  end
 
  # These methods are created by attr_accessor

  # def first_name
  #   @first_name
  # end

  # def first_name(name)
  #   @first_name = name
  # end


end
