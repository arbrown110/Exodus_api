class EventsController < ApplicationController
  before_action :set_adventure
  before_action :set_event, only: [:show, :destroy]

  # GET /events/1
  def show
    @event = Event.find(params[:id])
    render json: @event, status: 200
  end
  
  # GET /events
  def index
    @events = @adventure.events.all
    render json: @events
  end


  # POST /events
  def create
    @event = @adventure.events.create(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: @event
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = @adventure.events.find_by(id: params[:id])
    end

    def set_adventure
      @adventure = Adventure.find_by(id: params[:adventure_id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:title, :description, :krio, :adventure_id)
    end
end
