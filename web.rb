require 'sinatra'

get '/' do
  request.env['REMOTE_ADDR']
end
