module Similarweb
  module Category
    def category(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/category?#{params.to_query}"
      JSON(response.body)
    end
  end
end
