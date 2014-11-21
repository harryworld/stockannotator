require 'rails_helper'

RSpec.describe "stocks/new", :type => :view do
  before(:each) do
    assign(:stock, Stock.new(
      :ticker => "MyString"
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_ticker[name=?]", "stock[ticker]"
    end
  end
end
