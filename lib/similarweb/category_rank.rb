module Similarweb
  module CategoryRank
    def category_rank(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :api_key => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/CategoryRank?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
