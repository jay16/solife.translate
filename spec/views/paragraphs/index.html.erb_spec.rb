require 'spec_helper'

describe "paragraphs/index" do
  before(:each) do
    assign(:paragraphs, [
      stub_model(Paragraph,
        :title_id => 1,
        :index => 2,
        :content => "MyText",
        :markdown => "MyText",
        :translate => "MyText"
      ),
      stub_model(Paragraph,
        :title_id => 1,
        :index => 2,
        :content => "MyText",
        :markdown => "MyText",
        :translate => "MyText"
      )
    ])
  end

  it "renders a list of paragraphs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
