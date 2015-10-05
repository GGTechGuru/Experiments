require 'sinatra'

set :port, 3012

get '/' do
  <<-HTML
    <form method="post" action="/checked">
      <label><input type="checkbox" name="check[]" value="item 1" />
	First</label></br>
      <label><input type="checkbox" name="check[]" value="item 2" />
	Second</label></br>
      <label><input type="checkbox" name="check[]" value="item 3" />
	Third</label></br>
      <input type="submit" value="Select"/>
    </form>
  HTML
end

post '/checked' do
  puts "You selected " + params.inspect.to_s
  "You selected #{params}"
end
