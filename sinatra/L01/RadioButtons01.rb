require 'sinatra'

set :port, 3011

get '/' do
  <<-HTML
    <form method="post" action="/register">
      <input type="radio" name="regRadio" value="1" />
      <input type="radio" name="regRadio" value="2" />
      <input type="radio" name="regRadio" value="3" />
      <input type="radio" name="regRadio" value="4" />
      <input type="submit" value="Register"/>
    </form>
  HTML
end

post '/register' do
  "You selected #{params[:regRadio]}"
end
