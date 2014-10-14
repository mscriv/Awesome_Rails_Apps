class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    require 'net/http'
    require 'json'



    def hello_person
      if params[:greeting_tyoe] == 'g'
        @greeting = 'Goodbye'
      elsif params[:greeting_type] == 'h'
        @greeting = 'Hello'
      else
        @greeting = 'Um...'
      end
    end
end
