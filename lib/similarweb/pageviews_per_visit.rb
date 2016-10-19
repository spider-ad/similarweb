require 'date'
module Similarweb
  module PageviewsPerVisit
    def pageviews_per_visit(domain, params = {})

      date = Date.today.prev_month.strftime("%Y-%m")
      params[:start_date] ||= date
      params[:end_date] ||= date

      response = self.http_client.get "#{domain}/total-traffic-and-engagement/pages-per-visit?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
