class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
