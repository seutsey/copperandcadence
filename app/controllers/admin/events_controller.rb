class Admin::EventsController < Admin::BaseController
  before_action :set_event, only: [:edit, :update, :destroy]

  def index
    @events = Event.order(starts_at: :desc)
  end

  def new
    @event = Event.new(starts_at: Time.current.change(hour: 20))
  end

  def create
    @event = Event.new(event_params)
    @event.save ? redirect_to(admin_events_path, notice: "Event added.") : render(:new, status: :unprocessable_entity)
  end

  def edit; end

  def update
    @event.update(event_params) ? redirect_to(admin_events_path, notice: "Event updated.") : render(:edit, status: :unprocessable_entity)
  end

  def destroy
    @event.destroy
    redirect_to admin_events_path, notice: "Event deleted."
  end

  private

  def set_event = @event = Event.find(params[:id])
  def event_params = params.require(:event).permit(:title, :venue, :starts_at, :ends_at, :notes)
end
