module Similarweb
  module SocialReferrals
    def social_referrals(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/socialreferringsites?#{params.to_query}"
      JSON(response.body)
    end
  end
end
