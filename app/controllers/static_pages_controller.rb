class StaticPagesController < ApplicationController
  def home
  end

  def dashboard
  end

  def signup
  end

  def preference
    if logged_in?
      @preferrence = current_user.preferrences.build
    end
  end

  def status
    @user = current_user
  end

  def about
  end

  def contact
  end
end
