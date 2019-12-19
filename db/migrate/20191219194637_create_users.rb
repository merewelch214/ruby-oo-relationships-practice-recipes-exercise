class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |u|
      u.string :name
      u.timestamps
    end
  end
end
