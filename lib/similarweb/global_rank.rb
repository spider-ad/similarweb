require 'date'
module Similarweb
  module GlobalRank
    def global_rank(domain, params = {})
      params.merge!({
        :Userkey => self.api_key,
      })

      date = Date.today.prev_month.strftime("%m-%Y")
      params[:start] ||= date
      params[:end] ||= date

      response = self.http_client.get "#{domain}/global-rank/global-rank?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
