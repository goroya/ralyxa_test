require 'logger'
require 'pp'

log = Logger.new('log/log.txt')

intent 'LaunchRequest' do
  log.debug('LaunchRequest')
  ask(
      '<speak>いらっしゃいませ。寿司屋へようこそ。</speak>',
      ssml: true, session_attributes: {
      size: 0
  })
end

intent 'SessionEndedRequest' do
  log.debug('SessionEndedRequest')
  ask('<speak><emphasis level="strong">ありがとうございました。またのお越しをお待ちしております。</emphasis></speak>', ssml: true)
end


intent 'AMAZON.CancelIntent' do
  log.debug('AMAZON.CancelIntent')
  ask("AMAZON.CancelIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.HelpIntent' do
  log.debug('AMAZON.HelpIntent')
  ask("AMAZON.HelpIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.LoopOffIntent' do
  log.debug('AMAZON.LoopOffIntent')
  ask("AMAZON.LoopOffIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.LoopOnIntent' do
  log.debug('AMAZON.LoopOnIntent')
  ask("AMAZON.LoopOnIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.NextIntent' do
  log.debug('AMAZON.NextIntent')
  ask("AMAZON.NextIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.NoIntent' do
  log.debug('AMAZON.NoIntent')
  ask("AMAZON.NoIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.PauseIntent' do
  log.debug('AMAZON.PauseIntent')
  ask("AMAZON.PauseIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.PreviousIntent' do
  log.debug('AMAZON.PreviousIntent')
  ask("AMAZON.PreviousIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.RepeatIntent' do
  log.debug('AMAZON.RepeatIntent')
  ask("AMAZON.RepeatIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ResumeIntent' do
  log.debug('AMAZON.ResumeIntent')
  ask("AMAZON.ResumeIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ShuffleOffIntent' do
  log.debug('AMAZON.ShuffleOffIntent')
  ask("AMAZON.ShuffleOffIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.ShuffleOnIntent' do
  log.debug('AMAZON.ShuffleOnIntent')
  ask("AMAZON.ShuffleOnIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.StartOverIntent' do
  log.debug('AMAZON.StartOverIntent')
  ask("AMAZON.StartOverIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.StopIntent' do
  log.debug('AMAZON.StopIntent')
  ask("AMAZON.StopIntent", ssml: true, session_attributes: { persist: "this" })
end

intent 'AMAZON.YesIntent' do
  log.debug('AMAZON.YesIntent')
  ask("AMAZON.YesIntent", ssml: true, session_attributes: { persist: "this" })
end



