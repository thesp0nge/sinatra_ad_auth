require 'sinatra/base'
require './lib/sinatra/ad_user'

module Sinatra
  module ADAuth

    module Helpers
      def authorized?
        session[:authorized]
      end

      def authorize!
        redirect '/login' unless authorized?
      end

      def logout!
        session[:authorized] = false
      end
    end

    def self.registered(app)
      app.helpers ADAuth::Helpers
      app.enable :sessions

      app.get '/login' do
        "<form method='POST' action='/login'>" +
          "<input type='text' name='user'>" +
          "<input type='password' name='pass'>" +
          "<input type='submit'>" + 
          "</form>"
      end

      # Public - This API authenticates an user against a given Active
      # Directory server
      #
      app.post '/login' do
        user = Sinatra::ADAuth::User.authenticate(params[:user],params[:pass], settings.conf)

        if ! user.nil?
          session[:authorized] = true
          puts "here we are #{session[:authorized]}"
          redirect '/public'
        else
          session[:authorized] = false
          redirect '/login'
        end
      end
    end

  end
  register ADAuth
end
