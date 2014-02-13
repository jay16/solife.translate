require 'spec_helper'

describe "paragraphs/new" do
  before(:each) do
    assign(:paragraph, stub_model(Paragraph,
      :title_id => 1,
      :index => 1,
      :content => "MyText",
      :markdown => "MyText",
      :translate => "MyText"
    ).as_new_record)
  end

  it "renders new paragraph form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", paragraphs_path, "post" do
      assert_select "input#paragraph_title_id[name=?]", "paragraph[title_id]"
      assert_select "input#paragraph_index[name=?]", "paragraph[index]"
      assert_select "textarea#paragraph_content[name=?]", "paragraph[content]"
      assert_select "textarea#paragraph_markdown[name=?]", "paragraph[markdown]"
      assert_select "textarea#paragraph_translate[name=?]", "paragraph[translate]"
    end
  end
end
