require 'spec_helper'

describe "paragraphs/show" do
  before(:each) do
    @paragraph = assign(:paragraph, stub_model(Paragraph,
      :title_id => 1,
      :index => 2,
      :content => "MyText",
      :markdown => "MyText",
      :translate => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
