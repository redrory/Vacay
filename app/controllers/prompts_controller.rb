class PromptsController < ApplicationController
  
  def create
    #Rails.logger.info "These are params"  + params[:prompt]
    #@user = User.find(params[:id])
    @prompt = Prompt.new(params[:prompt])
    @prompt.save
  end
  
end
