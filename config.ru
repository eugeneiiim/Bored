require './server/lib/bored'

run (lambda do |env|
  [200, {'Content-Type'=>'text/plain'}, StringIO.new("foo")]
end)
