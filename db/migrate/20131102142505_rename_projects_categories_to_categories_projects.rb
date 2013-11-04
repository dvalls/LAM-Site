class RenameProjectsCategoriesToCategoriesProjects < ActiveRecord::Migration
  def change
          rename_table :projects_categories, :categories_projects
  end
end
