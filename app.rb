require 'sinatra'
require 'json'

get '/' do
  'I am a very special CloudEvents gateway!'
end

post '/webhook-receiver' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end
