# frozen_string_literal: true

class AssistantsController < ApplicationController
  before_action :set_assistant, only: %i[show update destroy]

  # GET /assistants
  def index
    @assistants = Assistant.all

    search if params[:search].present?
    paginate @assistants, per_page: 13
  end

  # GET /assistants/1
  def show
    render json: @assistant
  end

  # POST /assistants
  def create
    @assistant = Assistant.new(assistant_params)

    if @assistant.save
      render json: @assistant, status: :created, location: @assistant
    else
      render json: @assistant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assistants/1
  def update
    if @assistant.update(assistant_params)
      render json: @assistant
    else
      render json: @assistant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assistants/1
  def destroy
    @assistant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_assistant
    @assistant = Assistant.find(params[:id])
  end

  def search
    parameter = Regexp.escape(params[:search])
    @assistants = @assistants.where("
      CONCAT(name, ' ',phone, ' ', address) ~* ?", parameter)
  end

  # Only allow a trusted parameter "white list" through.
  def assistant_params
    params.require(:assistant).permit(:name, :group)
  end
end
