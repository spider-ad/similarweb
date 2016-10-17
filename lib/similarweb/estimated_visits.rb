require 'date'
module Similarweb
  module EstimatedVisits
    def estimated_visits(domain, params = {})
      binding.pry
      date = Date.today.prev_month.strftime("%Y-%m")
      params[:start_date] ||= date
      params[:end_date] ||= date

      response = self.http_client.get "#{domain}/total-traffic-and-engagement/visits?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
