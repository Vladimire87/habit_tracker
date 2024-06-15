class CreateProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :progresses do |t|
      t.date :date
      t.boolean :status
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
