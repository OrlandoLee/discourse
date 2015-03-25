class CreateQuestionares < ActiveRecord::Migration
  def change
    create_table :questionares do |t|
      t.text :answer

      t.timestamps
    end
  end
end
