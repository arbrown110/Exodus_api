class EventsController < ApplicationController
  before_action :set_event, only: [:update]

  # GET /events/1
  # def show
  #   render json: @event
  # end
  
  # GET /events
  def index
    @events = Event.where(adventure_id: params[:adventure_id])

    render json: @events
  end


  # POST /events
  def create
    event = Event.new(title: params[:title], description: params[:description], krio: params[:krio], adventure_id: params[:adventure_id]) 

    if event.save
      events = Event.where(adventure_id: params[:adventure_id])
      render json: events, status: :created, location: @event
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
  
    event = Event.find_by(id: params["id"])
    event.destroy
    render json: event
  end

  def show 
    evetns = Event.find_by(adventure_id: params[:adventure_id])
    render json: events
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(id: params["id"])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:title, :description, :krio, :adventure_id)
    end
end
