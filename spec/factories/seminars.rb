FactoryGirl.define do
  factory :seminar do
    title "Very Cool Seminar"
    description "Description of Very Cool Seminar"
    tutor "Very Cool Tutor"
    conference_url "http://zoom.us/path"
    starts_at DateTime.new()
    association :host, factory: :user, email: "bozo@theclown.com"
    capacity 12
  end
end
