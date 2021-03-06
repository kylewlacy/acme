require 'bundler'
require 'lib/ext/sinatra'

Bundler.require(:default, Sinatra.env)

Dir.glob('config/initializers/*.rb').each { |i| require i }
Dir.glob('app/helpers/*.rb').each { |h| require h }

require 'config/middleware'
require 'config/application'

Dir.glob('app/helpers/conditions/*.rb').each { |c| require c }
Dir.glob('app/models/*.rb').each { |m| require m }
Dir.glob('app/routes/*.rb').each { |r| require r }
