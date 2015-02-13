require 'rails_helper'

RSpec.describe "celebs/index", type: :view do
  before(:each) do
    assign(:celebs, [
      Celeb.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Celeb.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of celebs" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
