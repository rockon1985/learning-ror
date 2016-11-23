module Request
  module JsonHelpers
    def json_response
      @json_response ||= JSON.parse(response.body, symbolize_names: true)
    end
  end
  module ResponseHelpers
  	def response_status
  		response.instance_variable_get(:@status)
  	end
  end
end