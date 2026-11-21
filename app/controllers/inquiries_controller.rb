class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params.require(:inquiry).permit(:name, :email, :event_type, :event_date, :message))
    if @inquiry.save
      redirect_to contact_path, notice: "Thanks! We'll be in touch soon."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
