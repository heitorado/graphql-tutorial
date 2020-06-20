require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(args)
  end

  test 'create a new user' do
    user = perform(
      name: 'John Wick',
      auth_provider: {
        credentials: {
          email: 'johnwick@backtothegame.com',
          password: '123123'
        }
      }
    )

    assert user.persisted?
    assert_equal user.name, 'John Wick'
    assert_equal user.email, 'johnwick@backtothegame.com'
  end
end
