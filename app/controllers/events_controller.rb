class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
    # if params[:query].present?
    #   sql_query = " \
    #     events.name @@ :query \
    #     OR events.description @@ :query \
    #     OR events.sexe @@ :query \
    #     OR events.origin @@ :query \
    #   "
    #   @events = policy_scope(Dwarf.where(sql_query, query: "%#{params[:query]}%"))
    # else
    #   @events = policy_scope(Dwarf.all)
    # end
    @events = Event.all
    @event = Event.new
  end

  def show
    @message = Message.new
  end

  def new
    @event = Event.new
  end

  def create
    p event_params
    @event = Event.new(event_params)
    @event.user = current_user
    # authorize @event
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @event.destroy

    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :address, :description, :start_date, :photo)
  end
end
