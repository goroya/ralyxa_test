require 'sinatra'
require 'sinatra/reloader' if development?
require 'ralyxa'
require 'logger'

log = Logger.new('log/log.txt')
log.debug('debug')

print('AAAAAAAA')

post '/' do
  Ralyxa::Skill.handle(request)
end

get '/' do
  'hello'
end

