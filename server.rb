require 'sinatra'
require 'sinatra/reloader'
require 'ngrok/tunnel'
require 'ralyxa'
require 'logger'

log = Logger.new('log/log.txt')
log.debug('debug')


post '/' do
  Ralyxa::Skill.handle(request)
end

get '/' do
  'hello'
end

