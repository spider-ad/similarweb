require 'date'
module Similarweb
  module BounceRate
    def bounce_rate(domain, params = {})

      date = Date.today.prev_month.strftime("%Y-%m")
      params[:start_date] ||= date
      params[:end_date] ||= date

      response = self.http_client.get "#{domain}/total-traffic-and-engagement/bounce-rate?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
