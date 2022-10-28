class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :full_name
      t.string :avatar_img
      t.string :phone_number
      t.text :bio
      t.string :gender

      t.timestamps
    end
  end
end
