class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :CP
      t.string :city
      t.string :category
      t.date :start_date
      t.date :end_date
      t.string :name_asso

      t.timestamps
    end
  end
end
