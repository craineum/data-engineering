require 'spec_helper'

describe "Upload a file" do

  it "that is valid" do
    visit subsidiary_sales_path
    attach_file "uploadSubsidiary", "#{::Rails.root}/spec/fixtures/example_input.tab"
    click_button "Upload"
    expect(page).to have_content "Success"
    expect(SubsidiarySale.count).to be 4
    expect(page).to have_content "95"
  end

end
