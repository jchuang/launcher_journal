class CategoriesController < ApplicationController

  respond_to :html

  def index
    @categories = Category.all.alphabetical
  end

end
