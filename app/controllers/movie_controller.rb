        require 'net/http'

        class MovieController < ApplicationController
          # Prevent CSRF attacks by raising an exception.
          # For APIs, you may want to use :null_session instead.
          protect_from_forgery with: :exception

          QUERY_URL = 'http://www.myapifilms.com/imdb'


          def movie_query
            @movie_query = params[:movie_query]

            if params[:remember_search]
              cookies[:previous_movie_query] = params[:movie_query]
              cookies[:previous_search_type] = params[:search_type]

            else
              cookies.delete(:movie_query)
              cookies.delete(:search_type)
            end
            if @movie_query.present?

              @uri = if params[:search_type] == 'title'
                URI(QUERY_URL + "?title=#{URI.escape(@movie_query)}")
              else params[:search_type] == 'actor'
                URI(QUERY_URL + "?name=#{URI.escape(@movie_query)}")
              end

              @json = Net::HTTP.get(@uri)
              @parsed_data = JSON.parse(@json)
              @movie = @parsed_data.first
            end
          end
        end
