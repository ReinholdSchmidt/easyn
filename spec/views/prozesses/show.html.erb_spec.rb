require 'rails_helper'

RSpec.describe "prozesses/show", type: :view do
  before(:each) do
    @prozess = assign(:prozess, Prozess.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
