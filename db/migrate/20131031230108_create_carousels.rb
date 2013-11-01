class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.integer :project_id
      t.string :title
      t.string :description
      t.string :image_url
    end
  end
end
