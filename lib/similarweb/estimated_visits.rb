require 'date'
module Similarweb
  module EstimatedVisits
    def estimated_visits(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/visits?#{params.to_query}"
      JSON(response.body)
    end
  end
end
