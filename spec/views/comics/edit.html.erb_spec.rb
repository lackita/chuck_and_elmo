require 'spec_helper'

describe "comics/edit.html.erb" do
  before(:each) do
    @comic = assign(:comic, stub_model(Comic,
      :url => "MyString"
    ))
  end

  it "renders the edit comic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comics_path(@comic), :method => "post" do
      assert_select "input#comic_url", :name => "comic[url]"
    end
  end
end
