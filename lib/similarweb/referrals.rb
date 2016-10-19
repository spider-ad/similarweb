module Similarweb
  module Referrals
    def referrals(domain, params = {})
      response = self.http_client.get "#{domain}/v1/leadingreferringsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
