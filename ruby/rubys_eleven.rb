require 'json'
require 'set'

SecureCredentials = Struct.new(:username, :password)

class SecureLogin

  ADMIN = SecureCredentials.new('admin', 'yoAQNi6fKeC9I')

  # Gets all users from the database
  def self.users
    from_json = ->(data) { SecureCredentials.new(data['user'], data['pw']).freeze }
    credentials = JSON.load(USER_DATA).map(&from_json).to_set
    credentials << ADMIN
    credentials.freeze
  end

  def logged_in?
    !user.nil?
  end

  def admin?
    user == ADMIN
  end

  def login!
    @user = nil
    attempt = Frontend.new.given_credentials
    check_sanity(attempt)
    p "checked sanity"
    crypt_password!(attempt)
    p "cripted"
    check_credentials!(attempt)
    p "checked creds"
    p @user
   puts welcome
  end

  private

  # Make sure we’re not dealing with malicious objects
  def check_sanity(given)
    p given.password
    p String(given.password)
    fail unless String(given.username) == given.username
    fail unless String(given.password) == given.password.to_s
  end

  # Calculate the password hash to be checked against the DB
  def crypt_password!(given)
    p given.password.crypt(SALT)
    given.password = given.password.crypt(SALT)
  end

  # Check username and password against the DB
  def check_credentials!(given)
    all_users = self.class.users

    if all_users.include?(given)
      user = all_users.find { |u| u.username == given.username }
      @user = user if (user.password == given.password)
    end
  end

  def user
    @user ||= nil
  end

  def welcome
    if logged_in?
      msg = "Welcome, #{user.username}."
      msg << (admin? ? " You have administrator rights." : "")
    else
      "Login denied"
    end
  end

end

SALT = 'you_cannot_break_this'

USER_DATA = <<-EOF
  [
    { "user": "adrian", "pw": "yo1QEK9HWD6qI" },
    { "user": "becky",  "pw": "yoZ.8wHD5w8ws" },
    { "user": "claire", "pw": "yohqIFtr/D1uY" },
    { "user": "duncan", "pw": "yoJ.ue1CIy0O." },
    { "user": "eric",   "pw": "yobdrAbdHVHnQ" }
  ]
EOF


class Frontend
  def given_credentials
    SecureCredentials.new('adrian', 'yo1QEK9HWD6qI')
  end
end

class SecureCredential
  attr_accessor :username, :password
  def initialize username, password
    @username = username
    @password = Password.new password
  end
end

class Password
  attr_accessor :password
  def initialize password
    @password = password
  end
  def crypt solt
    "yo1QEK9HWD6qI"
  end
  def to_s
    @password
  end
end

SecureLogin.new.login!


p "h4xx0r3d".crypt("you_cannot_break_this") # yoiPPlV2aJjm.
