require_relative 'notification'

class EmailNotification < Notification
  def initialize(message)
    super(message: message, type: 'EmailNotification')
  end

  def deliver
    "Email sent with message: #{message}"
  end
end
