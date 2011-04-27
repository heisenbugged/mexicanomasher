class WebsitePost
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  
  field :title
  field :description

  validates_length_of :title, :maximum => 20
  validates_presence_of :title, :description, :thumbnail
  
  has_mongoid_attached_file :thumbnail,
  :styles => {
    :medium => ['262x193#', :jpg]
  }
end
