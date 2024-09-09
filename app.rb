# app.rb
require 'sinatra'
require_relative 'db/notifications'
require_relative 'models/notification_factory'
require_relative 'models/email_notification'
require_relative 'models/sms_notification'
require_relative 'models/push_notification'

get '/notification/:type' do
  message = params[:message] || "Default message"
  notification_type = params[:type].to_sym

  notification = NotificationFactory.create(notification_type, message)
  notification.save
  notification.deliver
end
