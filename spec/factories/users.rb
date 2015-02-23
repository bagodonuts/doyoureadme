FactoryGirl.define do
  factory :user do
    name "John Doe"
    email "mail@example.com"
    password "f4k3p455w0rd"
    password_confirmation "f4k3p455w0rd"
  end

end
