require 'spec_helper'

describe "titles/index" do
  before(:each) do
    assign(:titles, [
      stub_model(Title,
        :book_id => 1,
        :name => "Name",
        :desc => "MyText"
      ),
      stub_model(Title,
        :book_id => 1,
        :name => "Name",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of titles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
