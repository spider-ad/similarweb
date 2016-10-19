require 'date'
module Similarweb
  module GlobalRank
    def global_rank(domain, params = {})

      date = Date.today.prev_month.strftime("%Y-%m")
      params[:start_date] ||= date
      params[:end_date] ||= date

      response = self.http_client.get "#{domain}/global-rank/global-rank?#{to_query(params)}"
      JSON(response.body)
    end
  end
end
