$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'bored'

run (lambda do |env|
  [200, {'Content-Type'=>'text/plain'}, StringIO.new(pick)]
end)
