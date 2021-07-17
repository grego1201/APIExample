class CreateCommunicated < ActiveRecord::Migration[6.1]
  def change
    create_table :communicateds do |t|
      t.string :subject
      t.string :body
      t.references :last_communicated, foreign_key: { to_table: :communicateds}
      t.references :creator, foreign_key: { to_table: :people }
      t.references :receptor, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
