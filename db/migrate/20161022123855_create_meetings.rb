class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :nom
      t.float :latitude
      t.float :longitude
      t.string :participants
      t.datetime :date
    #  t.string :friends, array: true, default: []

      t.timestamps
    end
  end
end
