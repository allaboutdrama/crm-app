require_relative 'customer'
require 'sinatra'

get '/' do 
  @crm_app_name = "KUNDEN"
  @current_time = Time.now
  erb :index
end  


get '/new' do 
  erb :new
 end  

get '/id' do
  erb :id
end

get '/customers' do
  @customers = []
  @customers << Customer.new("Julie", "Hache", "julie@bitmakerlabs.com", "Instructor")
  @customers << Customer.new("Will", "Richman", "will@bitmakerlabs.com", "Co-Founder")
  @customers << Customer.new("Chris", "Johnston", "chris@bitmakerlabs.com", "Instructor")
  erb :customers
end  

get '/modify' do
  erb :modify
end


