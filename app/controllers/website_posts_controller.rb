class WebsitePostsController < ApplicationController
  inherit_resources
  actions :index, :new, :create
  def create
    create! { website_posts_path }
  end

  def index
    index! { @frontpage_text = FrontpageText.find(:last) }
  end
end
