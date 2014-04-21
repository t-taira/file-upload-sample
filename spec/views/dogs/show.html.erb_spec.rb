require 'spec_helper'

describe "dogs/show" do
  before(:each) do
    @dog = assign(:dog, stub_model(Dog,
      :name => "Name",
      :age => 1,
      #:photo => "Photo",
      #:photo_name => "Photo Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    #rendered.should match(/Photo/)
    #rendered.should match(/Photo Name/)
  end
end

