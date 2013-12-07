class InvoicesController < ApplicationController
  def show
    @invoice = Invoice.find(params[:id])
    unless @invoice.completed
      @invoice.update_attributes!(completed: true)
    else
      redirect_to root_path
    end
  end
end
