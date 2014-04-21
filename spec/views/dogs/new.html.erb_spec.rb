require 'spec_helper'

describe "dogs/new" do
  before(:each) do
    assign(:dog, stub_model(Dog,
                            :name => "MyString",
                            :age => 1,
                            :photo => "MyString",
    #:photo_name => "MyString"
    ).as_new_record)
  end

  it "renders new dog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dogs_path, "post" do
      assert_select "input#dog_name[name=?]", "dog[name]"
      assert_select "input#dog_age[name=?]", "dog[age]"
      assert_select "input#dog_photo[name=?]", "dog[photo]"
      #assert_select "input#dog_photo_name[name=?]", "dog[photo_name]"
    end
  end
end
