class TestController < ApplicationController

require 'rubygems'
require 'net/http'
require 'json'

        respond_to :json
        $usaGovURI = "http://api.usa.gov/jobs/search.json?query=nursing+jobs"

        def getJobs
            response = Net::HTTP.get_response(URI.parse($usaGovURI))
            data = response.body
            JSON.parse(data)

            render :text => JSON.parse(data)
        end
end
