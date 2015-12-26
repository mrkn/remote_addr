require 'sinatra'

get '/' do
  request.env['HTTP_X_FORWARDED_FOR'] || request.env['REMOTE_ADDR']
end
