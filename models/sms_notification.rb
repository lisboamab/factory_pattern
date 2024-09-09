require_relative 'notification'

class SmsNotification < Notification
  def initialize(message)
    super(message: message, type: 'SmsNotification')
  end

  def soma
    1+1
  end
  def deliver
    "SMS sent with message: #{message} funcao: #{soma}"
  end
end
