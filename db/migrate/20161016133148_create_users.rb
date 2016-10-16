class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :id_user
      t.string :email
      t.string :first_name
      t.string :last_name
      t.float :latitude
      t.float :longitude
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
