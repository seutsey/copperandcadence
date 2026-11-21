class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :notes

      t.timestamps
    end
  end
end
