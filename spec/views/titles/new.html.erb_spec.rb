require 'spec_helper'

describe "titles/new" do
  before(:each) do
    assign(:title, stub_model(Title,
      :book_id => 1,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", titles_path, "post" do
      assert_select "input#title_book_id[name=?]", "title[book_id]"
      assert_select "input#title_name[name=?]", "title[name]"
      assert_select "textarea#title_desc[name=?]", "title[desc]"
    end
  end
end
