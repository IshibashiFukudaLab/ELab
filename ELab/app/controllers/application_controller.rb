class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def big_category
    @big_category = BigCategory.all
  end

  def get_small_category_by_id(big_id)
    # @small_category = SmallCategory.find(:all, :conditions => { :big_category_id => big_id })
    @small_category = SmallCategory.where(big_category_id: big_id)

  end


  helper_method :big_category, :get_small_category_by_id
end
