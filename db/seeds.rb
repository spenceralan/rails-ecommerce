class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.generate_test_users
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end

  def generate_test_users
    User.create(
      email: "admin@admin.com",
      password: "admin123456",
      password_confirmation: "admin123456",
      admin: true
    )

    User.create(
      email: "test@test.com",
      password: "123456",
      password_confirmation: "123456"
    )
  end
end

Seed.begin
