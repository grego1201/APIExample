class CreatePersons < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
