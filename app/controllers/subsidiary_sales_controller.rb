class SubsidiarySalesController < ApplicationController

  def index
  end

  def create
    begin
      @total_gross = SubsidiarySale.process_upload params["uploadSubsidiary"]
      @message = "Success"
    rescue
      @message = "Fail"
    end
  end

end
