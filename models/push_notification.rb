require_relative 'notification'

class PushNotification < Notification
  def initialize(message)
    super(message: message, type: 'PushNotification')
  end

  def deliver
    "Push notification sent with message: #{message}"
  end
end
