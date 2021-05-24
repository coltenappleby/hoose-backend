class JobSearchesController < ApplicationController

    def index 
        @job_searches = JobSearch.all
        render json: @job_searches
    end

    def show
        @job_search = JobSearch.find(params[:id])
        render json: @job_search
    end
end
