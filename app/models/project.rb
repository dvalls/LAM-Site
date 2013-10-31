class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_taggable

  translates :title, :description, :body

  has_many :images, :as => :imageable, :dependent => :destroy

end
