require 'java'

class Java::JavaUtil::HashMap
  def keys
    map { |k,v| k }
  end
end

describe java.util.HashMap do

  before(:all) do
    @hash = java.util.HashMap.new
    @hash["hello"]  = "world"
    @hash["ruby"]   = "is awesome"
    @hash[:symbols] = "are handy"
  end

  it "should return its keys" do
    @hash.keys.should == [ "ruby", "hello", :symbols ]
  end

  it "should return its values" do
    @hash.values.to_a.should == [ "is awesome", "world", "are handy" ]
  end

end
