require 'date'
module Similarweb
  module EstimatedVisits
    def estimated_visits(domain, params = {})
      params.merge!({
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/v1/visits", params
      JSON(response.body)
    end
  end
end
