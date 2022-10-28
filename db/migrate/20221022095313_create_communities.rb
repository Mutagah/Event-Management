class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.text :community_description
      t.string :community_img

      t.timestamps
    end
  end
end
