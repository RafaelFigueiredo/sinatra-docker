# require "bundler/setup"
require "sinatra"
require "sinatra/json"
require 'rack/ssl'

require_relative './sinatra_ssl'

set :bind, '0.0.0.0'
set :ssl_certificate, "#{File.dirname(__FILE__)}/certs/cert.crt"
set :ssl_key, "#{File.dirname(__FILE__)}/certs/pkey.pem"
set :port, 4567

# Redirect all http requests to httpS
use Rack::SSL


get "/" do
  "It's alive!!"
end