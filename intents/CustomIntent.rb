require 'logger'
require 'pp'

log = Logger.new('log/log.txt')

intent 'GoodMorningIntent' do
  log.debug('debug')

  name = request.slot_value('Name')
  tell("おはようでござる #{ name } ")
end

intent 'EncourageIntent' do

  name = request.slot_value('Name')
  ask("<speak><emphasis level='strong'>ベストを尽くすだけでは勝てない。僕は勝ちにいく。</emphasis></speak>", ssml: true)
end

