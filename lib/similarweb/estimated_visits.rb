require 'date'
module Similarweb
  module EstimatedVisits
    def estimated_visits(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :Userkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/visits?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
