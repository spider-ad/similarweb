require 'date'
module Similarweb
  module Pageviews
    def pageviews(domain, params = {})
      params.merge!({
        :Format => "JSON",
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:Start] ||= date
      params[:End] ||= date

      response = self.http_client.get "#{domain}/v1/pageviews?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
