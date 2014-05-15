class EmailController < ApplicationController

  def about
  end

  def email
    ContactMailer.setup_email(params[:email]).deliver
    render nothing: true, status: 200

    # TODO: send the email here.

    #FIRST set up a mailer... next use sidekiq to run in the background
  end
end
