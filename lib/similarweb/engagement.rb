module Similarweb
  module Engagement
    def engagement(domain, params = {})
  
      response = self.http_client.get "#{domain}/v1/engagement?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
