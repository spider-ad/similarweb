module Similarweb
  class Client

    include AlsoVisited
    include EstimatedVisits
    include SimilarSites
    include CategoryRank
    include Destinations
    include Keywords
    include SocialReferrals
    include Category
    include Engagement
    include Referrals
    include Tags
    include Traffic
    include VisitDuration
    include PageviewsPerVisit
    include GlobalRank
    include BounceRate
    include GeoDistribution

    attr_accessor :api_key, :http_client

    def initialize(args = {})
      args.each do |key, value|
        send(:"#{key}=", value)
      end
      make_http_client!
    end

    def to_query(hash)
      hash.to_a.map { |x| "#{x[0]}=#{x[1]}" }.join("&")
    end

  private

    def make_http_client!
      base_url = "https://api.similarweb.com/v1/website/"
      self.http_client = Faraday.new(:url => base_url)
    end

  end

end
