class CreateBrodos < ActiveRecord::Migration
  def change
    create_table :brodos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
