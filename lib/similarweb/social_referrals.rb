module Similarweb
  module SocialReferrals
    def social_referrals(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :Userkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/socialreferringsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
