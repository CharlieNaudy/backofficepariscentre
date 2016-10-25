class AddAdressToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :adress, :text
  end
end
