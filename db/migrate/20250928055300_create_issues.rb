class CreateIssues < ActiveRecord::Migration[8.0]
  def change
    create_table :issues do |t|
      t.string :issue_type
      t.string :location
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
