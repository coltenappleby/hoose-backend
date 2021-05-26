require 'open-uri'
require 'nokogiri'
require 'json'

class JobSearchesController < ApplicationController

    def index 
        @job_searches = JobSearch.all
        render json: @job_searches
    end

    def show
        @job_search = JobSearch.find(params[:id])
        render json: @job_search
    end

    def create
        if params[:remote] == false
            is_remote = "7e3167e4-ccb4-49cb-b761-9bae564a0a63"
        end

        query_url = "https://www.indeed.com/jobs?l=#{params[:zip_code].to_s}&radius=#{params[:radius]}&jt=#{params[:fulltime]}&fromage=#{params[:date_posted]}&remotejob=#{is_remote}" 
        html = URI.open(query_url)
        response = Nokogiri::HTML(html) 
        num_jobs = response.css("div#searchCountPages").text.split("of ")[1].split(" jobs")[0].split(",").join()

       
    
        # byebug
        job_search = JobSearch.create(
            zip_code_id: params[:zip_code_id],
            remote: false,
            radius: params[:radius],
            job_type: params[:job_type],
            date_posted: params[:date_posted],
            number_of_posts: num_jobs,
            user_id: params[:user_id]
        )
        if job_search.valid?
            render json: job_search
        else
            render json: job_search.errors.full_messages
        end
    end


    private

    def job_search_params
        params.permit(:zip_code_id, :remote, :salary_estimate, :search_term, :radius, :date_posted, :number_of_posts, :user_id, :zip_code, :job_type)
    end
end