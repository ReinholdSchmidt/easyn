require 'rails_helper'

RSpec.describe "prozesses/new", type: :view do
  before(:each) do
    assign(:prozess, Prozess.new())
  end

  it "renders new prozess form" do
    render

    assert_select "form[action=?][method=?]", prozesses_path, "post" do
    end
  end
end
