module Similarweb
  module Category
    def category(domain, params = {})
      response = self.http_client.get "#{domain}/v1/category?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
