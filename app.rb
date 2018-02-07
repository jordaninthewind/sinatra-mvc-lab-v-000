require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    # @word = params[:user_phrase]

    @piggy_word = PigLatinizer.new(params[:user_phrase])#.to_pig_latin
    binding.pry
    erb :piglatinize
  end
end
