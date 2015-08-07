require 'date'
module Similarweb
  module EstimatedVisits
    def estimated_visits(domain)
      date = Date.today.prev_month.strftime("%m-%Y")
      response = self.http_client.get "#{domain}/v1/visits?start=#{date}&end=#{date}&Format=JSON&UserKey=#{self.api_key}"
      JSON(response.body)
    end
  end
end
