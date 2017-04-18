class ParamsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :redirect_url, :string
  end
end
