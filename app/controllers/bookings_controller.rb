class BookingsController < ApplicationController


    def create
        event = Event.find(params[:event_id])
        user = User.find_by(email: params[:email])
        unless user.present?
            user = User.create(user_params)
        end

        amount_to_pay = params[:no_of_tickets].to_i * event.price

        booking = event.bookings.create(
            user_id: user.id,
            no_of_tickets: params[:no_of_tickets].to_i,
            amount_paid: amount_to_pay
        )
        
        BookingsMailer.booking_confirmation(booking).deliver_now

        redirect_to event_path(event), notice: 'Your ticket has been booked'
    end

    private

    def user_params
        params.permit(:full_name, :phone_number, :email)
    end
end
