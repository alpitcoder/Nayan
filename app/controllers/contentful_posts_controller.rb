require 'contentful_post'
class ContentfulPostsController < ApplicationController
  before_action :contentfulPost_config

  def index
    @posts = @contentful_client.entries
  end

  def show
    @post = @contentful_client.entry(params[:id])
  end

  private

  def contentfulPost_config
    @contentful_client = ContentfulPost.configure
  end

end
