class HomeController < ApplicationController

	require 'net/http'
	require 'uri'

	def check_status()
      uri = URI.parse('http://mniufscappvm14:7003/modeln/app/launchPage.html?autoLaunch=true')
      @url=uri
      	begin
  		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
        response = http.request(request)
        Rails.logger.debug(response)
        Rails.logger.debug(response.code)
        rescue Errno::ECONNREFUSED, SocketError, NoMethodError
          @result = 'Not Running'
          return @result
        end
        if response.code == '200'
        Rails.logger.debug("Entered")	
          @result='Running'
        else
          @result='Not Running'
        end
    end
end
