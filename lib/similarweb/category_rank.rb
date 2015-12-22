module Similarweb
  module CategoryRank
    def category_rank(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/CategoryRank?#{params.to_query}"
      JSON(response.body)
    end
  end
end
