FactoryGirl.define do
  factory :user do
    first_name "Ash"
    last_name "Williams"
    sequence(:email) { |n| "ash.williams#{n}@s-mart.com" }

    photo { Rack::Test::UploadedFile.new(File.join(Rails.root, 'lib/assets/images/ash.jpg')) }
  end
end
