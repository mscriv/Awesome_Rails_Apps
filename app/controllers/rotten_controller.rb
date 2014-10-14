    class RottenController < ApplicationController




        API_KEY = 'pqpjsexrj35xjtg64twmny6r'


        QUERY_URL = URI("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=#{API_KEY}&q=toystory3&page_limit=1")

        def rotten_query

            url = QUERY_URL
            raw_json = Net::HTTP.get(url)

            search_result = JSON.parse(raw_json)

            @s = search_result["movies"].first

        end
    end
