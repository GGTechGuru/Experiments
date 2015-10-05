require 'sinatra'

set :port, 3012

get '/' do
  <<-HTML
    <form method="post" action="/checked">
      <input type="checkbox" name="check[]" value="item 1" />
      <input type="checkbox" name="check[]" value="item 2" />
      <input type="checkbox" name="check[]" value="item 3" />
      <input type="submit" value="Select"/>
    </form>
  HTML
end

post '/checked' do
  puts "You selected " + params.inspect.to_s
  "You selected #{params}"
end
