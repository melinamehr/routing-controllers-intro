class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "WELCOME"
  end

  def about
    @header = "ABOUT US"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  def secrets
      if params[:magic_word] == "surprise"
        # stay on page
      else
        flash[:alert] = "Sorry, you're not authorized to see that page!"
        redirect_to welcome_path
      end
  end

end
