module Similarweb
  module SocialReferrals
    def social_referrals(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :api_key => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/socialreferringsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
