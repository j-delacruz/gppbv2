require 'spec_helper'

describe "project_procurement_management_plans/show" do
  before(:each) do
    @project_procurement_management_plan = assign(:project_procurement_management_plan, stub_model(ProjectProcurementManagementPlan,
      :name => "Name",
      :user_id => 1,
      :agency_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
