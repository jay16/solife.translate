require 'spec_helper'

describe "titles/edit" do
  before(:each) do
    @title = assign(:title, stub_model(Title,
      :book_id => 1,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", title_path(@title), "post" do
      assert_select "input#title_book_id[name=?]", "title[book_id]"
      assert_select "input#title_name[name=?]", "title[name]"
      assert_select "textarea#title_desc[name=?]", "title[desc]"
    end
  end
end
