require 'date'
module Similarweb
  module VisitDuration
    def visit_duration(domain, params = {})
      params.merge!({
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/v1/visitduration", params
      JSON(response.body)
    end
  end
end
