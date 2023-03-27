class FormDetailsController < ApplicationController
  def new
    @form_detail = FormDetail.new 
  end

  def create
    @form_detail = FormDetail.new(form_params)

    if @form_detail.save
      redirect_to @form_detail
    else
      flash.now[:error] = @form_detail.errors.full_messages.join(", ")
      render :new, status: :unprocessable_entity
    end
  end

  private
  def form_params
    params.require(:form_detail).permit(:name, :age, :gender, :address, :terms_and_conditions, :relocate, :email, :email_confirmation)
  end
end
