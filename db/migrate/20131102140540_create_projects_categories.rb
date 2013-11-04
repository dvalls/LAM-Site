class CreateProjectsCategories < ActiveRecord::Migration
  def change
    create_table :projects_categories do |t|
      t.integer :category_id
      t.integer :project_id
    end
  end
end
