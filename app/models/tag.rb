class Tag < ActiveRecord::Base
  self.table_name = "tags"

  translates :name
end
