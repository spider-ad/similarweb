module Similarweb
  module AlsoVisited
    def also_visited(domain, params = {})
      response = self.http_client.get "#{domain}/v1/alsovisited?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
