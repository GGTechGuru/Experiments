require 'sinatra'
set :port, 3010

s = []
s << "Test 1: Status X"
s <<  "Test 2: Status Y"

  p = []
  p << "<h1>TEST STATUSES</h1>"
  s.map { |t| p << "<p>#{t}</p>" }

puts "p: " + p.inspect.to_s

get '/' do
  p
end # get '/'
