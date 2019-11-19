class FplAccountsController < ApplicationController
  def create
    fpl_account = FplAccount.find_or_initialize_by(user: current_user)
    fpl_account.assign_attributes(username: params[:username], password: params[:password])
    if fpl_account.save
      redirect_back fallback_location: root_url, notice: "Successfully added FPL Account!"
    else
      redirect_back fallback_location: root_url, alert: task.errors.full_messages.to_sentence.capitalize
    end
  end

  def destroy
    current_user.fpl_account&.destroy
    redirect_back fallback_location: root_url, notice: "FPL Account successfully deleted"
  end
end
