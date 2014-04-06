require_relative 'rolodex'
require_relative 'customer'
require 'sinatra'

@@rolodex = Rolodex.new

@@rolodex.add_customer(Customer.new("Marlene", "Dietrich", "marlene@dietrich.com", "Icon"))


get '/' do 
  @crm_app_name = "Kunden"
  erb :index
end

get '/customers' do
  erb :customers
end

get '/customers/new' do
  erb :new_customer
end


get '/customers/:id' do
  @customer = @@rolodex.find(params[:id].to_i)
  if @customer
    erb :show_customer
  else
    raise Sinatra::NotFound
  end
end

get '/customers/:id/edit' do
  @customer = @@rolodex.find(params[:id].to_i)
    if @customer
    erb :edit#_customer
  else
    erb :index #raise Sinatra::NotFound
  end
end    

put '/customers/:id' do
  @customer = @@rolodex.find(params[:id].to_i)
  if @customer
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]
    @customer.email = params[:email]
    @customer.notes = params[:notes]

    redirect to('/customers')
  else
    raise Sinatra::NotFound
  end
end

post '/customers' do
  new_customer = Customer.new(params[:first_name], params[:last_name], params[:email], params[:notes])
  @@rolodex.add_customer(new_customer)
  redirect to('/customers')
end  

get '/find_customer' do
  erb :find_customer
end  

delete '/customers/:id' do
  @customer = @@rolodex.find(params[:id].to_i)
  if @customer
    @@rolodex.remove_customer(@customer)
    redirect to('/customers')
  else
    raise Sinatra::NotFound
  end    
 end 


