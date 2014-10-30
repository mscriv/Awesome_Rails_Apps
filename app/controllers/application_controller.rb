class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    require 'net/http'
    require 'json'



    def hello_person
      cookies[:person_name] = params[:name] if params[:name]
      cookies[:greeting_type] = params[:greeting_type] if params[:greeting_type]

      @name = params[:name] || cookies[:person_name]
      @gtype = params[:greeting_type]  || cookies[:greeting_type]

      if @gytpe == 'g'
        @greeting = 'Goodbye'
      elsif @gtype == 'h'
        @greeting = 'Hello'
      else
        @greeting = 'Um...'
      end
    end
end
