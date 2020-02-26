class ActivityLogsController < ApplicationController
  before_action :set_activity_log, only: [:show, :update, :destroy]

  # GET /activity_logs
  def index
    @activity_logs = ActivityLog.joins(:baby, :assistant, :activity)
                      .select(columns_names).order("activity_logs.start_time DESC")
    filter_by_baby if params[:baby_id].present?
    filter_by_assistant if params[:assistant_id].present?
    filter_by_status if params[:status].present?
    paginate @activity_logs, per_page: 10
  end

  # GET /activity_logs/1
  def show
    render json: @activity_log
  end

  # POST /activity_logs
  def create
    @activity_log = ActivityLog.new(activity_log_params)

    if @activity_log.save
      render json: @activity_log, status: :created, location: @activity_log
    else
      render json: @activity_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_logs/1
  def update
    if @activity_log.update(activity_log_params)
      render json: @activity_log
    else
      render json: @activity_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_logs/1
  def destroy
    @activity_log.destroy
  end

  private

    def columns_names
      "activity_logs.id, 
      activity_logs.baby_id, 
      activity_logs.comments, 
      activity_logs.assistant_id,  
      babies.name as baby_name, 
      assistants.name as assistant_name,
      activities.name as activity_name,
      activity_logs.start_time as start_time,
      activity_logs.stop_time as stop_time,
      activity_logs.duration as duration"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_log
      @activity_log = ActivityLog.select(columns_names).joins(:baby, :assistant, :activity).find(params[:id])
    end
    
    def filter_by_baby
      baby_id = Regexp.escape(params[:baby_id])
      @activity_logs = @activity_logs.where("activity_logs.baby_id = ? ", baby_id)
    end

    def filter_by_assistant

      assistant_id = Regexp.escape(params[:assistant_id])
      @activity_logs = @activity_logs.where("activity_logs.assistant_id = ? ", assistant_id)
    end

    def filter_by_status
      @activity_logs = filters
    end

    def filters
      return @activity_logs.finished if params[:status] == "finished"
      return @activity_logs.in_progress if params[:status] == "in_progress"
    end

    # Only allow a trusted parameter "white list" through.
    def activity_log_params
      params.require(:activity_log).permit(:baby_id, :assistant_id, :activity_id, :start_time, :stop_time, :duration)
    end
end
