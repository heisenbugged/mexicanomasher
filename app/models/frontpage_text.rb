class FrontpageText
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :content
  field :title
  
end
