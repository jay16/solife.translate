require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :name => "MyString",
      :author => "MyString",
      :desc => "MyText",
      :info => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_name[name=?]", "book[name]"
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "textarea#book_desc[name=?]", "book[desc]"
      assert_select "textarea#book_info[name=?]", "book[info]"
    end
  end
end
