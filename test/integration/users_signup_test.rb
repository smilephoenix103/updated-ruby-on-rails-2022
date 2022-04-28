require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: '',
                                         email: 'foo@invalid',
                                         password: 'foo',
                                         password_confirmation: 'bar' } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors', count: 8 # for each input field
    # there are 2 HTML tags with "field_with_errors" class (label / input)
  end

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'test user',
                                         email: 'user@example.com',
                                         password: 'xxxxxx',
                                         password_confirmation: 'xxxxxx' } }
    end
    follow_redirect!
    # assert_template 'users/show'
    assert_not flash.empty?
    # assert is_logged_in?
  end
end
