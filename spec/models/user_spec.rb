
require 'rails_helper'

describe User do
  it { should validate_presence_of :email }

  subject { User.new(email: "test@test.com") }
  it { should validate_uniqueness_of(:email).case_insensitive }

end
