class TicketsController < ApplicationController
  before_action :ensure_signed_in

  before_action do
    @movie = Movie.find(params[:movie_id])
  end

  def new
    @ticket = @movie.tickets.new
  end

  def create
    @ticket = @movie.tickets.new(params.require(:ticket).permit(:show_time_id, :quantity))
    @ticket.user_id = current_user.id
    @ticket.save
    redirect_to movie_ticket_path(@movie, @ticket)
  end

  def show
    @ticket = @movie.tickets.find(params[:id])
  end
end
