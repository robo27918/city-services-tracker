class IssuesController < ApplicationController
  before_action :set_issue , only: %i[show edit update destroy]
  def index
    @issues = Issue.all # an array of ActiveRecord:: Relation, 
                        #each element is an issue object
  end

  def show
  end

  def new
    @issue = Issue.new
  end

  def edit
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to @issue, notice:"Issue created successfully!"
    else
      puts @issue.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @issue.update(issue_params)
      redirect_to @issue, notice: "Issue updated successfully!"
    else
      render:edit
    end
  end
  
  def destroy
    @issue.destroy
    redirect_to issues_path,notice: "Issue deleted successfully!"
  end
  
  private
  
  def set_issue
    @issue= Issue.find(params[:id])
  end
  
  def issue_params
    
    #the parameters that must be provided to create the Issue
    params.require(:issue).permit(:description, :status, :issue_type, :user_id,)
  end

end

