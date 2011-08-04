require 'spec_helper'

describe "comics/index.html.erb" do
  before(:each) do
    assign(:comics, [
      stub_model(Comic,
        :url => "Url"
      ),
      stub_model(Comic,
        :url => "Url"
      )
    ])
  end

  it "renders a list of comics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
