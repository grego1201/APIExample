class CreateAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :attachments do |t|
      t.references :communicated, foreign_key: { to_table: :communicateds }

      t.timestamps
    end
  end
end
