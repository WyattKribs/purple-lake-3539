class TicketController <ApplicationController

  def edit
    ticket = Ticket.find(params[:id])
  end

end
