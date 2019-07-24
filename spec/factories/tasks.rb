FactoryBot.define do
  factory :task do
    name { 'テストを書く' }
    description { 'Rspecをダウンロード' }
    user
  end
end
