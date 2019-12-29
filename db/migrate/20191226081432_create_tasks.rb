class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.string :status
      t.date :due
      t.boolean :completed
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
