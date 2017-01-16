user = User.new
user.email = 'admin@malibuitlabs.com'
user.password = 'test1234'
user.password_confirmation = 'test1234'
user.role = 'admin'
user.save!
