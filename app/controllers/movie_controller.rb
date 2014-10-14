    class MovieController < ApplicationController

        require 'net/http'
        require 'json'

        QUERY_URL = "http://www.myapifilms.com/imdb"

        layout 'application'
=begin
        def movie_query

          title = params[:title]
          if title.present?

            uri = URI(QUERY_URL + "?title=#{URI.escape(title)}")
            raw_json = Net::HTTP.get_response(uri)

            parsed_data = JSON.parse(raw_json)

            @movie = parsed_data.first
          end
=end
          def movie_query
            title = params[:title]

            url = URI(QUERY_URL + "?title=#{URI.escape(title)}")
            raw_json = Net::HTTP.get(url)

            search_result = JSON.parse(raw_json)
            @movie = search_result.first
          end


    end
