require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: '',
                                         email: 'foo@invalid',
                                         password: 'foo',
                                         password_confirmation: 'bar'
                                         }
                                }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors', count: 8 # for each input field
    # there are 2 HTML tags with "field_with_errors" class (label / input)
  end
end
