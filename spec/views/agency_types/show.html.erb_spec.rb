require 'spec_helper'

describe "agency_types/show" do
  before(:each) do
    @agency_type = assign(:agency_type, stub_model(AgencyType,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
