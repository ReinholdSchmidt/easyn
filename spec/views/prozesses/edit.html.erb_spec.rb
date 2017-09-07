require 'rails_helper'

RSpec.describe "prozesses/edit", type: :view do
  before(:each) do
    @prozess = assign(:prozess, Prozess.create!())
  end

  it "renders the edit prozess form" do
    render

    assert_select "form[action=?][method=?]", prozess_path(@prozess), "post" do
    end
  end
end
