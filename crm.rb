require 'sinatra'




get '/' do 
  @crm_app_name = "KUNDEN"
  @current_time = Time.now
  erb :index
end  