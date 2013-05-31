class Album < ActiveRecord::Base
  attr_accessible :cover, :description, :order_id, :title
  mount_uploader :cover, CoverUploader
end
