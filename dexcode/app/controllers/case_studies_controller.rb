class CaseStudiesController < ApplicationController
  def index
   @casestudy = CaseStudy.all
  end

  def show
    @casestudy = CaseStudy.find(params[:id])
    @casestudyimage = @casestudy.case_study_images
  end
end
