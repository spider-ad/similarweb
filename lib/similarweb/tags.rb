module Similarweb
  module Tags
    def tags(domain, params = {})
      response = self.http_client.get "#{domain}/v1/tags?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
