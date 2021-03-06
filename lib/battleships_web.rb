require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  get '/success' do
    erb :success
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
