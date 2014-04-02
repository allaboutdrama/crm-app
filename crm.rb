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
  erb :customers
end  

get '/modify' do
  erb :modify
end


