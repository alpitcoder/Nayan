require 'contentful_post'
class ContentfulPostsController < ApplicationController

  def index
    contentful_client = ContentfulPost.configure
    @posts = contentful_client.entries
  end

  def show
    contentful_client = ContentfulPost.configure
    @post = contentful_client.entry(params[:id])
  end

end
