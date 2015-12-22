module Similarweb
  module Traffic
    def traffic(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :Userkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/traffic?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
