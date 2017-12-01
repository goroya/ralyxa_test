require 'logger'
require 'pp'

log = Logger.new('log/log.txt')

intent 'LaunchRequest' do
  pp 'LaunchRequest'
  log.debug('LaunchRequest')
  ask(
      '<speak>いらっしゃいませ。寿司屋へようこそ。</speak>',
      ssml: true, session_attributes: { ordered: [] }
  )
end

intent 'SessionEndedRequest' do
  pp 'SessionEndedRequest'
  log.debug('SessionEndedRequest')
  ask('<speak><emphasis level="strong">ありがとうございました。またのお越しをお待ちしております。</emphasis></speak>', ssml: true)
end


intent 'AMAZON.CancelIntent' do
  pp 'AMAZON.CancelIntent'
  log.debug('AMAZON.CancelIntent')
  ask("AMAZON.CancelIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.HelpIntent' do
  pp 'AMAZON.HelpIntent'
  log.debug('AMAZON.HelpIntent')
  ask("AMAZON.HelpIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.LoopOffIntent' do
  pp 'AMAZON.LoopOffIntent'
  log.debug('AMAZON.LoopOffIntent')
  ask("AMAZON.LoopOffIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.LoopOnIntent' do
  pp 'AMAZON.LoopOnIntent'
  log.debug('AMAZON.LoopOnIntent')
  ask("AMAZON.LoopOnIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.NextIntent' do
  pp 'AMAZON.NextIntent'
  log.debug('AMAZON.NextIntent')
  ask("AMAZON.NextIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.NoIntent' do
  pp 'AMAZON.NoIntent'
  log.debug('AMAZON.NoIntent')
  ask("AMAZON.NoIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.PauseIntent' do
  pp 'AMAZON.PauseIntent'
  log.debug('AMAZON.PauseIntent')
  ask("AMAZON.PauseIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.PreviousIntent' do
  pp 'AMAZON.PreviousIntent'
  log.debug('AMAZON.PreviousIntent')
  ask("AMAZON.PreviousIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.RepeatIntent' do
  pp 'AMAZON.RepeatIntent'
  log.debug('AMAZON.RepeatIntent')
  ask("AMAZON.RepeatIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ResumeIntent' do
  pp 'AMAZON.ResumeIntent'
  log.debug('AMAZON.ResumeIntent')
  ask("AMAZON.ResumeIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ShuffleOffIntent' do
  pp 'AMAZON.ShuffleOffIntent'
  log.debug('AMAZON.ShuffleOffIntent')
  ask("AMAZON.ShuffleOffIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ShuffleOnIntent' do
  pp 'AMAZON.ShuffleOnIntent'
  log.debug('AMAZON.ShuffleOnIntent')
  ask("AMAZON.ShuffleOnIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.StartOverIntent' do
  pp 'AMAZON.StartOverIntent'
  log.debug('AMAZON.StartOverIntent')
  ask("AMAZON.StartOverIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.StopIntent' do
  pp 'AMAZON.StopIntent'
  log.debug('AMAZON.StopIntent')
  ask("AMAZON.StopIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.YesIntent' do
  pp 'AMAZON.YesIntent'
  log.debug('AMAZON.YesIntent')
  ask("AMAZON.YesIntent", ssml: true, session_attributes: { persist: "this" })
end



