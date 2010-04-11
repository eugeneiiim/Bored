module Bored

def self.pick
  fn = File.join(File.dirname(__FILE__), '..', 'data', 'activities')
  File.readlines(fn).choice
end

end
