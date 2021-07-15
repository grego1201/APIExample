class Attachment < ApplicationRecord
  belongs_to :communicated, class_name: 'Communicated'
end
