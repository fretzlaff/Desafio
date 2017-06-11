class CreateCriteria < ActiveRecord::Migration[5.1]
  def change
    create_table :criteria do |t|
      t.string :type
      t.integer :rule
      t.string :value
      t.references :target, foreign_key: true

      t.timestamps
    end
  end
end
