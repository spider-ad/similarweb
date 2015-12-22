module Similarweb
  module Referrals
    def referrals(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/leadingreferringsites?#{params.to_query}"
      JSON(response.body)
    end
  end
end
