require 'logger'
require 'pp'

log = Logger.new('log/log.txt')

intent 'CallIntent' do
  ask("<speak><emphasis level='strong'>承ります。ご注文のネタをおっしゃってください</emphasis></speak>", ssml: true)
end

intent 'OrderIntent' do
  ordered = request.session_attribute('orders')

  order_array = []
  order_array.push(request.slot_value('NetaOne')) unless request.slot_value('NetaOne').nil?
  order_array.push(request.slot_value('NetaTwo')) unless request.slot_value('NetaTwo').nil?
  order_array.push(request.slot_value('NetaThree')) unless request.slot_value('NetaThree').nil?
  order_array.push(request.slot_value('NetaFour')) unless request.slot_value('NetaFour').nil?
  order_array.push(request.slot_value('NetaFive')) unless request.slot_value('NetaFive').nil?
  order_array.push(request.slot_value('NetaSix')) unless request.slot_value('NetaSix').nil?
  order_array.push(request.slot_value('NetaSeven')) unless request.slot_value('NetaSeven').nil?
  order_array.push(request.slot_value('NetaEight')) unless request.slot_value('NetaEight').nil?
  order_array.push(request.slot_value('NetaNine')) unless request.slot_value('NetaNine').nil?
  order_array.push(request.slot_value('NetaTen')) unless request.slot_value('NetaTen').nil?

  msg = 'ご確認させていただきます。ご注文は'
  msg += order_array.join('、')
  msg += 'ですね。すぐにお持ちします'

  order_buffer = []
  order_buffer += order_array
  order_buffer += ordered unless ordered.nil?

  ask(
      "<speak>#{msg}</speak>",
      ssml: true,
      session_attributes: { orders: order_buffer }
  )
end

intent 'CheckIntent' do

  ordered = request.session_attribute('orders')
  pp(ordered)
  msg = 'お会計を致します。'
  sum = 0
  if ordered.nil?
    return tell("<speak>何もたべないんかい</speak>", ssml: true)
  end

  for elm in ordered do
    msg += elm + '100円、'
    sum += 100
  end

  msg += "合計#{sum}'円になります。"
  tell("<speak><emphasis level='strong'>#{msg} ありがとうございました。</emphasis></speak>", ssml: true)
end


