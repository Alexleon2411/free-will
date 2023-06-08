class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :participants]

  def home
  end

  def dashboard
  end

  def participants
    @participants = User.all
  end
end
