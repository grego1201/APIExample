class Communicated < ApplicationRecord
  ADULT_YEARS = 18

  belongs_to :creator, class_name: 'Person', foreign_key: 'creator_id'
  belongs_to :receptor, class_name: 'Person', foreign_key: 'receptor_id'
  belongs_to :last_communicated, class_name: 'Communicated', optional: true

  has_many :attachments, class_name: 'Attachment'

  default_scope { order(id: :asc) }

  scope :adult_receptor, -> { joins(:receptor).where('birthday < ?', Date.today - ADULT_YEARS.years) }
end
