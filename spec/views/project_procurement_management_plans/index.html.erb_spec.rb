require 'spec_helper'

describe "project_procurement_management_plans/index" do
  before(:each) do
    assign(:project_procurement_management_plans, [
      stub_model(ProjectProcurementManagementPlan,
        :name => "Name",
        :user_id => 1,
        :agency_id => 2
      ),
      stub_model(ProjectProcurementManagementPlan,
        :name => "Name",
        :user_id => 1,
        :agency_id => 2
      )
    ])
  end

  it "renders a list of project_procurement_management_plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
