module Similarweb
  module Destinations
    def destinations(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/leadingdestinationsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
