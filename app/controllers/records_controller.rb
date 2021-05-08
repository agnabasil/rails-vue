# frozen_string_literal: true

# Records COntroller
class RecordsController < ApplicationController
  def index
    @records = Record.all
    render json: @records
  end

  def show
    @record = Record.find(params[:id])
    render json: { data: @record, status: :ok, message: 'Success' }
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      render json: { status: :ok, message: 'Success' }
    else
      render json: { json: @record.errors, status: :unprocessable_entity }
    end
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      render json: { status: :ok, message: 'Success' }
    else
      render json: { json: @record.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @record = Record.find(params[:id])
    if @record.destroy
      render json: { json: 'Record was successfully deleted.'}
    else
      render json: { json: @record.errors, status: :unprocessable_entity }
    end
  end

  private

  def record_params
    params.require(:record).permit(:id, :first_name, :last_name, :email, :phone, :address)
  end
end
