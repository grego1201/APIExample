class CommunicatedSerializer < ActiveModel::Serializer
  attributes :id, :creator_id, :receptor_id, :subject, :body, :last_communicated_id
end
