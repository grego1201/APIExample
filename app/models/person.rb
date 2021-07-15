class Person < ApplicationRecord
  has_many :communicateds_sent, foreign_key: 'creator_id'
end
