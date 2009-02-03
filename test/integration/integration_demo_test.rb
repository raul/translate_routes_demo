require 'test_helper'

class IntegrationTestDemoTest < ActionController::IntegrationTest

  fixtures :all

  test "just showing how the translated helpers work here too" do
    
    get users_path
    assert_response :success
    assert_equal 'en', I18n.locale
    
    get users_es_path
    assert_response :success
    assert_equal 'es', I18n.locale
    
    get users_en_path
    assert_response :success
    assert_equal 'en', I18n.locale
    
  end

end
