class PagesController < ApplicationController
  def about_us
  	@about_us = Page.find(1)
  end

  def contact_us
  	@contact_us = Page.find(2)
  end
end
