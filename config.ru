#$LOAD_PATH << File.join(File.dirname(__FILE__))
require './server/lib/bored'

run (lambda do |env|
  [200, {'Content-Type'=>'text/plain'}, StringIO.new(Bored.pick)]
end)
