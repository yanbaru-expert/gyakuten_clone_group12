AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create(email: "test@example.com", password: "password")

system "rake import_csv:aws"
system "rake import_csv:questions"
system "rake import_movie_csv:movies"