require 'sinatra'

# FIXME: redirect http to httpS
# require 'rack/ssl'
# use Rack::SSL

get '/' do
  "It's alive"
end