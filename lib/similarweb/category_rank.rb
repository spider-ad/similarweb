module Similarweb
  module CategoryRank
    def category_rank(domain, params = {})
      response = self.http_client.get "#{domain}/v1/CategoryRank?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
