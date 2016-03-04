require 'date'
module Similarweb
  module Pageviews
    def pageviews(domain, params = {})
      params.merge!({
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/v1/pageviews", params
      JSON(response.body)
    end
  end
end
