module Similarweb
  module SimilarSites
    def similar_sites(domain, params = {})
      response = self.http_client.get "#{domain}/v2/similarsites?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
