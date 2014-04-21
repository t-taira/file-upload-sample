require 'spec_helper'

describe "dogs/index" do
  before(:each) do
    assign(:dogs, [
        stub_model(Dog,
                   :name => "Name",
                   :age => 1,
        # :photo => "Photo",
        # :photo_name => "Photo Name"
        ),
        stub_model(Dog,
                   :name => "Name",
                   :age => 1,
        # :photo => "Photo",
        # :photo_name => "Photo Name"
        )
    ])
  end

  it "renders a list of dogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    #assert_select "tr>td", :text => "Photo".to_s, :count => 2
    #assert_select "tr>td", :text => "Photo Name".to_s, :count => 2
  end
end
