require_relative "./hackathon/version"
require 'sinatra'
require 'pusher'
require 'json'

module PusherHackathon
	class AuthApp  < Sinatra::Base

		post '/pusher/auth' do
			response['Access-Control-Allow-Origin'] = '*'
			
			Pusher[params[:channel_name]].authenticate(params[:socket_id], {
				user_id: params[:user_id] || 1,
			  	user_info: JSON.parse(params[:user_info] || {twitter: 'pusher'}.to_json)
		  	}).to_json
		end
	end
end