class CreateIssues < ActiveRecord::Migration[8.0]
  def change
    create_table :issues do |t|
      t.string :issue-type
      t.string :location
      t.string :description
      t.datetime :created-on

      t.timestamps
    end
  end
end
