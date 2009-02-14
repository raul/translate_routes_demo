class UserMailer < ActionMailer::Base

  def new_user(user)
    default_url_options[:host] = 'example.com'
    recipients    'admin@example.com'
    from          'admin@example.com'
    subject       "Mr #{user.last_name} has been registered"
    sent_on       Time.now
    @body        = { :user => user }
    content_type 'text/plain'
  end

end
