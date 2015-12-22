module Similarweb
  module Tags
    def tags(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/tags?#{params.to_query}"
      JSON(response.body)
    end
  end
end
