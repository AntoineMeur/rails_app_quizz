class JobsController < ApplicationController

    def create
        @job = Job.create
        render json: @job
    end

    def show
        @job = Job.find_by(id: params[:id])
        render json: @job
    end

    def index
        @jobs = Job.all
        render json: @jobs
    end

end
