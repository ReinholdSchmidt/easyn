require 'rails_helper'

RSpec.describe "prozesses/index", type: :view do
  before(:each) do
    assign(:prozesses, [
      Prozess.create!(),
      Prozess.create!()
    ])
  end

  it "renders a list of prozesses" do
    render
  end
end
