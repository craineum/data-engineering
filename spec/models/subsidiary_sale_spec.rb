require 'spec_helper'

describe SubsidiarySale do

  describe ".process_upload" do
    let(:file) { double "file" }

    before do
      file.stub(:path).and_return("#{::Rails.root}/spec/fixtures/example_input.tab")
    end

    it "creates records based on file data" do
      expect(SubsidiarySale.count).to eq 0
      expect(SubsidiarySale.process_upload(file)).to eq 95
      expect(SubsidiarySale.count).to eq 4
    end
  end

end
