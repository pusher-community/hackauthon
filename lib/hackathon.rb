require_relative "./hackathon/version"
require 'sinatra'
require 'pusher'
require 'json'

module PusherHackathon
	class AuthApp  < Sinatra::Base

		post '/pusher/auth' do
			response['Access-Control-Allow-Origin'] = '*'

			Pusher.app_id = settings.app_id
			Pusher.key = settings.app_key
			Pusher.secret = settings.app_secret
			
			Pusher[params[:channel_name]].authenticate(params[:socket_id], {
				user_id: params[:user_id],
			  	user_info: JSON.parse(params[:user_info])
		  	}).to_json
		end
	end
end