class WelcomeController < ApplicationController
  def index
    @blogs = Blog.all
    @images = Image.all
  end
end
