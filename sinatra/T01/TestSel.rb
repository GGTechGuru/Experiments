require 'sinatra'

set :port, 3011

get '/' do
  <<-HTML
    <form method="post" action="/select_tests">
      <input type="submit" value="Select Environment & Click"/></br>
      <label><input type="radio" name="envRadio" value="Dev" />
        Dev</label></br>
      <label><input type="radio" name="envRadio" value="QA" />
        QA</label></br>
      <label><input type="radio" name="envRadio" value="Staging" />
        Staging</label></br>
      <label><input type="radio" name="envRadio" value="Prod" />
        Prod</label></br>
    </form>
  HTML
end

post '/select_tests' do
  puts "You selected #{params[:envRadio]}"
  
  <<-HTML
    <form method="post" action="/tests_selected">
      <input type="submit" value="Select Tests to Run. Then Click"/></br>
      <label><input type="checkbox" name="test_list[]" value="Test_1" />
	First</label></br>
      <label><input type="checkbox" name="test_list[]" value="Test_2" />
	Second</label></br>
      <label><input type="checkbox" name="test_list[]" value="Test_3" />
	Third</label></br>
    </form>
  HTML
end

post '/tests_selected' do
  puts "You selected " + params.inspect.to_s
  "You selected #{params}"
end
