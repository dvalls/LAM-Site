class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  # tags
  acts_as_taggable

  # i18n
  translates :title, :description, :body

  # Cover image
  mount_uploader :cover_image, CoverImageUploader

  has_and_belongs_to_many :categories

  has_many :images, :as => :imageable, :dependent => :destroy
  has_many :carousels, :dependent => :destroy

end
