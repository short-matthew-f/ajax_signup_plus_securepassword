class User < ActiveRecord::Base
  has_secure_password

  # gives us the following methods:
  # .password=(pwd)
  # .password
  # .authenticate(user_input_password) ==> .is_password?(pwd)
  # and....
  # .password_confirmation=(pwd_conf)
  # .password_confirmation
  # plus
  # validations for
  # password digest presence
  # and if both .password and .password_confirmation are not nil
  #   it will validate that they match
end
