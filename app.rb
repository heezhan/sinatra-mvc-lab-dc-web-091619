require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 

        erb :user_input
    end 

    post '/piglatinize' do 
        piglatinzed = PigLatinizer.new
        @result = piglatinzed.piglatinize(params[:user_phrase])
        
        erb :results
    end 


end