class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :body
      t.date :year

      t.timestamps
    end
  end
end
