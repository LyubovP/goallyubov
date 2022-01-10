FactoryBot.define do
  factory :task do
    association :user, factory: :user
    
    title              { Faker::Lorem.characters(number: (rand 4..150)) }
    description       { Faker::Lorem.sentence(word_count: 10) }
    priority          { [:low, :medium, :high].sample }
    completion_status { [:active, :completed].sample }
    due_date          { Faker::Date.between(from: '2021-09-08', to: '2021-12-20') }
  end
end