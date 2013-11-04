class Category < ActiveRecord::Base
  translates :name, :shortname

  has_and_belongs_to_many :projects
end
