module Similarweb
  module AlsoVisited
    def also_visited(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :api_key => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/alsovisited?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
