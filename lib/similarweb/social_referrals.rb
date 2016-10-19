module Similarweb
  module SocialReferrals
    def social_referrals(domain, params = {})
      response = self.http_client.get "#{domain}/v1/socialreferringsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
