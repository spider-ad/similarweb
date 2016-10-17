require 'date'
module Similarweb
  module BounceRate
    def bounce_rate(domain, params = {})
      params.merge!({
        :api_key => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/total-traffic-and-engagement/bounce-rate?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
