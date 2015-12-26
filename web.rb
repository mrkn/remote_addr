require 'sinatra'

get '/' do
  "".tap do |res|
    request.env.each do |key, value|
      res << "#{key}: #{value.inspect}\n" if /\A[A-Z0-9_]+\z/ === key
    end
  end
end
