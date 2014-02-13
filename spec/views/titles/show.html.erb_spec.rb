require 'spec_helper'

describe "titles/show" do
  before(:each) do
    @title = assign(:title, stub_model(Title,
      :book_id => 1,
      :name => "Name",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
