require 'rails_helper'

RSpec.describe "stocks/edit", :type => :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :ticker => "MyString"
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input#stock_ticker[name=?]", "stock[ticker]"
    end
  end
end
