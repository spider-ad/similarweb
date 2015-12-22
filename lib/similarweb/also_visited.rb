module Similarweb
  module AlsoVisited
    def also_visited(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :serkey => self.api_key
      })

      response = self.http_client.get "#{domain}/v1/alsovisited?#{params.to_query}"
      JSON(response.body)
    end
  end
end
