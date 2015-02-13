require 'rails_helper'

RSpec.describe "celebs/edit", type: :view do
  before(:each) do
    @celeb = assign(:celeb, Celeb.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit celeb form" do
    render

    assert_select "form[action=?][method=?]", celeb_path(@celeb), "post" do

      assert_select "input#celeb_first_name[name=?]", "celeb[first_name]"

      assert_select "input#celeb_last_name[name=?]", "celeb[last_name]"
    end
  end
end
