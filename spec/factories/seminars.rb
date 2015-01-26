FactoryGirl.define do
  factory :seminar do
    title "MyString"
    description "MyString"
    tutor "MyString"
    conference_url "MyString"
    starts_at DateTime.new()
  end
end
