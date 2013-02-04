require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProjectProcurementManagementPlansController do

  # This should return the minimal set of attributes required to create a valid
  # ProjectProcurementManagementPlan. As you add validations to ProjectProcurementManagementPlan, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProjectProcurementManagementPlansController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all project_procurement_management_plans as @project_procurement_management_plans" do
      project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
      get :index, {}, valid_session
      assigns(:project_procurement_management_plans).should eq([project_procurement_management_plan])
    end
  end

  describe "GET show" do
    it "assigns the requested project_procurement_management_plan as @project_procurement_management_plan" do
      project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
      get :show, {:id => project_procurement_management_plan.to_param}, valid_session
      assigns(:project_procurement_management_plan).should eq(project_procurement_management_plan)
    end
  end

  describe "GET new" do
    it "assigns a new project_procurement_management_plan as @project_procurement_management_plan" do
      get :new, {}, valid_session
      assigns(:project_procurement_management_plan).should be_a_new(ProjectProcurementManagementPlan)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_procurement_management_plan as @project_procurement_management_plan" do
      project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
      get :edit, {:id => project_procurement_management_plan.to_param}, valid_session
      assigns(:project_procurement_management_plan).should eq(project_procurement_management_plan)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProjectProcurementManagementPlan" do
        expect {
          post :create, {:project_procurement_management_plan => valid_attributes}, valid_session
        }.to change(ProjectProcurementManagementPlan, :count).by(1)
      end

      it "assigns a newly created project_procurement_management_plan as @project_procurement_management_plan" do
        post :create, {:project_procurement_management_plan => valid_attributes}, valid_session
        assigns(:project_procurement_management_plan).should be_a(ProjectProcurementManagementPlan)
        assigns(:project_procurement_management_plan).should be_persisted
      end

      it "redirects to the created project_procurement_management_plan" do
        post :create, {:project_procurement_management_plan => valid_attributes}, valid_session
        response.should redirect_to(ProjectProcurementManagementPlan.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_procurement_management_plan as @project_procurement_management_plan" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectProcurementManagementPlan.any_instance.stub(:save).and_return(false)
        post :create, {:project_procurement_management_plan => { "name" => "invalid value" }}, valid_session
        assigns(:project_procurement_management_plan).should be_a_new(ProjectProcurementManagementPlan)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectProcurementManagementPlan.any_instance.stub(:save).and_return(false)
        post :create, {:project_procurement_management_plan => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested project_procurement_management_plan" do
        project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
        # Assuming there are no other project_procurement_management_plans in the database, this
        # specifies that the ProjectProcurementManagementPlan created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProjectProcurementManagementPlan.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => project_procurement_management_plan.to_param, :project_procurement_management_plan => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested project_procurement_management_plan as @project_procurement_management_plan" do
        project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
        put :update, {:id => project_procurement_management_plan.to_param, :project_procurement_management_plan => valid_attributes}, valid_session
        assigns(:project_procurement_management_plan).should eq(project_procurement_management_plan)
      end

      it "redirects to the project_procurement_management_plan" do
        project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
        put :update, {:id => project_procurement_management_plan.to_param, :project_procurement_management_plan => valid_attributes}, valid_session
        response.should redirect_to(project_procurement_management_plan)
      end
    end

    describe "with invalid params" do
      it "assigns the project_procurement_management_plan as @project_procurement_management_plan" do
        project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectProcurementManagementPlan.any_instance.stub(:save).and_return(false)
        put :update, {:id => project_procurement_management_plan.to_param, :project_procurement_management_plan => { "name" => "invalid value" }}, valid_session
        assigns(:project_procurement_management_plan).should eq(project_procurement_management_plan)
      end

      it "re-renders the 'edit' template" do
        project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectProcurementManagementPlan.any_instance.stub(:save).and_return(false)
        put :update, {:id => project_procurement_management_plan.to_param, :project_procurement_management_plan => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested project_procurement_management_plan" do
      project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
      expect {
        delete :destroy, {:id => project_procurement_management_plan.to_param}, valid_session
      }.to change(ProjectProcurementManagementPlan, :count).by(-1)
    end

    it "redirects to the project_procurement_management_plans list" do
      project_procurement_management_plan = ProjectProcurementManagementPlan.create! valid_attributes
      delete :destroy, {:id => project_procurement_management_plan.to_param}, valid_session
      response.should redirect_to(project_procurement_management_plans_url)
    end
  end

end