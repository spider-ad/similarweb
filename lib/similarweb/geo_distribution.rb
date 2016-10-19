require 'date'
module Similarweb
  module GeoDistribution
    def geo_distribution(domain, params = {})

      date = Date.today.prev_month.strftime("%Y-%m")
      params[:start_date] ||= date
      params[:end_date] ||= date

      response = self.http_client.get "#{domain}/Geo/traffic-by-country?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
