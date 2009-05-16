require 'java'
require "commons-codec-1.3.jar"
require "commons-logging-1.1.1.jar"
require "commons-httpclient-3.1.jar"

module Java
  include_class "org.apache.commons.httpclient.HttpClient"
  include_class "org.apache.commons.httpclient.methods.GetMethod"
end

method = Java::GetMethod.new( "http://google.com" )
result = Java::HttpClient.new.executeMethod( method )

puts "Response status code: #{result}"
puts "Body: #{method.getResponseBodyAsString}"
method.releaseConnection
























# begin  
#   get    = Java::GetMethod.new( "http://google.com" )
#   result = Java::HttpClient.new.executeMethod(get)
# rescue java.lang.IllegalStateException => e
#   puts "Could not setup request #{e}"
#   exit(1)
# end
