class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :unread_notify_count
  
  def unread_notify_count
    return 0 if current_user.blank?
    # @unread_notify_count ||= current_user.notifications.unread.count
    @unread_notify_count = 0
  end  
end
