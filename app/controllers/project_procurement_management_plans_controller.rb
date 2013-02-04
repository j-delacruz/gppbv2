class ProjectProcurementManagementPlansController < ApplicationController
  
  # GET /project_procurement_management_plans
  # GET /project_procurement_management_plans.json
  def index
    @project_procurement_management_plans = current_user.project_procurement_management_plans.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_procurement_management_plans }
    end
  end

  # GET /project_procurement_management_plans/1
  # GET /project_procurement_management_plans/1.json
  def show
    @project_procurement_management_plan = ProjectProcurementManagementPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_procurement_management_plan }
    end
  end

  # GET /project_procurement_management_plans/new
  # GET /project_procurement_management_plans/new.json
  def new
    @project_procurement_management_plan = current_user.project_procurement_management_plans.build
    1.times { @project_procurement_management_plan.projects.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_procurement_management_plan }
    end
  end

  # GET /project_procurement_management_plans/1/edit
  def edit
    @project_procurement_management_plan = ProjectProcurementManagementPlan.find(params[:id])
  end

  # POST /project_procurement_management_plans
  # POST /project_procurement_management_plans.json
  def create
    @project_procurement_management_plan = ProjectProcurementManagementPlan.new(params[:project_procurement_management_plan])

    respond_to do |format|
      if @project_procurement_management_plan.save
        format.html { redirect_to @project_procurement_management_plan, notice: 'Project procurement management plan was successfully created.' }
        format.json { render json: @project_procurement_management_plan, status: :created, location: @project_procurement_management_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @project_procurement_management_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_procurement_management_plans/1
  # PUT /project_procurement_management_plans/1.json
  def update
    @project_procurement_management_plan = ProjectProcurementManagementPlan.find(params[:id])

    respond_to do |format|
      if @project_procurement_management_plan.update_attributes(params[:project_procurement_management_plan])
        format.html { redirect_to @project_procurement_management_plan, notice: 'Project procurement management plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_procurement_management_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_procurement_management_plans/1
  # DELETE /project_procurement_management_plans/1.json
  def destroy
    @project_procurement_management_plan = ProjectProcurementManagementPlan.find(params[:id])
    @project_procurement_management_plan.destroy

    respond_to do |format|
      format.html { redirect_to project_procurement_management_plans_url }
      format.json { head :no_content }
    end
  end
end
