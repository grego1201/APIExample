class CommunicatedsController < ApplicationController
  def index
    communicateds = Communicated.adult_receptor
    total_attachments = Attachment.where(communicated: communicateds).count
    render status: :ok, json: { communicateds: communicateds, total_attachments: total_attachments }
  end
end
