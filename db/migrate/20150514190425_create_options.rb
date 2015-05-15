class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :body
      t.boolean :answer
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :options, :questions

  end
end
