class CreateHomes < ActiveRecord::Migration[7.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end