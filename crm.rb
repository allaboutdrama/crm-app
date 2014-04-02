require_relative 'rolodex'
require_relative 'customer'
require 'sinatra'

@@rolodex = Rolodex.new

get '/' do 
  @crm_app_name = "KUNDEN"
  @current_time = Time.now
  erb :index
end  


get '/new' do 
  erb :new
 end  

get '/customers/id' do
  erb :id
end

get '/customers' do
  # @customers = []
  # @customers << Customer.new("Julie", "Hache", "julie@bitmakerlabs.com", "Instructor")
  # @customers << Customer.new("Will", "Richman", "will@bitmakerlabs.com", "Co-Founder")
  # @customers << Customer.new("Chris", "Johnston", "chris@bitmakerlabs.com", "Instructor")
  erb :customers
end  

get '/modify' do
  erb :modify
end

post '/customers' do
  new_customer = Customer.new(params[:first_name], params[:last_name], params[:email], params[:notes])
  @@rolodex.add_customer(new_customer)
  redirect to('/customers')
  puts params
end  


