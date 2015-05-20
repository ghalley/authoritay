class CreateAnotherExamples < ActiveRecord::Migration
  def change
    create_table :another_examples do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
