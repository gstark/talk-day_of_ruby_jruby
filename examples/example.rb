require 'java'

hash = java.util.HashMap.new
hash["hello"]  = "world"
hash["ruby"]   = "is awesome"
hash[:symbols] = "are handy"

# puts hash.keys.inspect

class Java::JavaUtil::HashMap
  def keys
    map { |k,v| k }
  end
end

puts hash.keys.inspect
