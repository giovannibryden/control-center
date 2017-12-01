module FeedsHelper
  require 'net/http'
  require 'uri'
	
  def verify(api_secret)
    output = `curl -u #{api_secret}: https://mixpanel.com/api/2.0/events/top?type=unique`
    return JSON.parse(output)
	end
end
