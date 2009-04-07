require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  fixtures :users

  test "new user mail body renders default english link to a user" do
    user = users(:matz)
    default_email = UserMailer.deliver_new_user(user)
    assert default_email.body.include?("http://example.com/users/#{user.id}")
  end
  
  test "new user mail body renders translated link to a user" do
    user = users(:matz)
    I18n.locale = :es
    es_email = UserMailer.deliver_new_user(user)
    assert es_email.body.include?("http://example.com/es/usuarios/#{user.id}")
  end
  
end
