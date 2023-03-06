class CreateCapitals < ActiveRecord::Migration[7.0]
  def change
    create_table :capitals do |t|
      t.string :city
      t.string :state
      t.string :timezone

      t.timestamps
    end
  end
end
