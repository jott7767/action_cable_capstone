class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.string :created_by
      t.boolean :is_public

      t.timestamps
    end
  end
end
