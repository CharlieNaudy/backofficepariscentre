class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :address
      t.datetime :date

      t.timestamps
    end
  end
end
