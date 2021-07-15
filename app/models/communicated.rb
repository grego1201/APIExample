class Communicated < ApplicationRecord
  belongs_to :creator, class_name: 'Person', foreign_key: 'creator_id'
  belongs_to :receptor, class_name: 'Person', foreign_key: 'receptor_id'
  belongs_to :last_communicated, class_name: 'Communicated', optional: true
end
