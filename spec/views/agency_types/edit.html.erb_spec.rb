require 'spec_helper'

describe "agency_types/edit" do
  before(:each) do
    @agency_type = assign(:agency_type, stub_model(AgencyType,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit agency_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agency_types_path(@agency_type), :method => "post" do
      assert_select "input#agency_type_name", :name => "agency_type[name]"
      assert_select "input#agency_type_description", :name => "agency_type[description]"
    end
  end
end
