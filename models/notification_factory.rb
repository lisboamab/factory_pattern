class NotificationFactory
  def self.create(type, message)
    case type
    when :email
      EmailNotification.new(message)
    when :sms
      SmsNotification.new(message)
    when :push
      PushNotification.new(message)
    else
      raise "Unknown notification type: #{type}"
    end
  end
end
