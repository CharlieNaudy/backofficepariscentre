class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :id_meeting
      t.float :latitude
      t.float :longitude
      t.string :participants
      t.datetime :date

      t.timestamps
    end
  end
end
