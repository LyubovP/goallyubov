class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.integer :priority
      t.datetime :due_date
      t.bigint :user_id
      t.integer :completion_status, default: 0

      t.timestamps
    end
  end
end
