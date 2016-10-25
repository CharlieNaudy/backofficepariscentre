class AddAddressToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :address, :text
  end
end
