FactoryGirl.define do 
    factory :comment do
        message "This is a test"
        rating "1_star"
        association :user
        association :place
    end
end

FactoryGirl.define do
    factory :user do
        sequence :email do |n|
            "iceman#{n}@gmail.com"
        end
        password "rubyfireandice"
        password_confirmation "rubyfireandice"    
    end
end 

FactoryGirl.define do
    factory :place do
        name "Yummy Breakfast Cafe"
        description "Yummy food"
        address "123 Fourth Ave"
        latitude(12.3456789)
        longitude(-98.7654321)
        association :user
    end
end       

