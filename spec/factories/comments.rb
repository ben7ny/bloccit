FactoryGirl.define do
   factory :comment do
     body RandomData.random_sentence
     user
   end
 end
