require 'spec_helper'

describe "project_procurement_management_plans/edit" do
  before(:each) do
    @project_procurement_management_plan = assign(:project_procurement_management_plan, stub_model(ProjectProcurementManagementPlan,
      :name => "MyString",
      :user_id => 1,
      :agency_id => 1
    ))
  end

  it "renders the edit project_procurement_management_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_procurement_management_plans_path(@project_procurement_management_plan), :method => "post" do
      assert_select "input#project_procurement_management_plan_name", :name => "project_procurement_management_plan[name]"
      assert_select "input#project_procurement_management_plan_user_id", :name => "project_procurement_management_plan[user_id]"
      assert_select "input#project_procurement_management_plan_agency_id", :name => "project_procurement_management_plan[agency_id]"
    end
  end
end
