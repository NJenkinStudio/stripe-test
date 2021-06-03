class SubmissionsController < ApplicationController
  def index
  end

  def new
    @submission = Submission.new
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def create
    @submission = Submission.new(form_params)
    # byebug
    if @submission.save
      # byebug
      redirect_to @submission
    else
      flash.now[:error] = "Oops, something went wrong with your submission. Please try again!"
      render :new
    end
  end

  def form_params
    # byebug
    params.require(:submission).permit(
      :title,
      :stripe_payment_id
    )
  end
end
