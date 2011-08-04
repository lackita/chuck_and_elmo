require 'spec_helper'

describe "comics/show.html.erb" do
  before(:each) do
    @comic = assign(:comic, stub_model(Comic,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
  end
end
