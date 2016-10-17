require 'date'
module Similarweb
  module Traffic
    def traffic(domain, params = {})
      params.merge!({
        :api_key => self.api_key
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/total-traffic-and-engagement/visits?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
