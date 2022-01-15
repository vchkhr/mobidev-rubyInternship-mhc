class CreateProblemsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :problems_users do |t|
      t.belongs_to :problem, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
