require 'date'
module Similarweb
  module BounceRate
    def bounce_rate(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:Start] ||= date
      params[:End] ||= date

      response = self.http_client.get "#{domain}/v1/bouncerate?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
