class Admin::InquiriesController < Admin::BaseController
  def index
    @inquiries = Inquiry.order(created_at: :desc)
  end

  def destroy
    Inquiry.find(params[:id]).destroy
    redirect_to admin_inquiries_path, notice: "Inquiry deleted."
  end
end
