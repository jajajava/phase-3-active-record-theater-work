class CreateRole < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :character_name
    end
  end
end
