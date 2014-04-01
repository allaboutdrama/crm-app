require 'sinatra'

get '/' do 
  @crm_app_name = "KUNDEN"
  erb :index
end  