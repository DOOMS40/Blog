class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.string :name
      t.string :patronymic
      t.string :surname
      t.string :image

      t.timestamps
    end
  end
end
