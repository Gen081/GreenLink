class FplAccountsController < ApplicationController

  def index
    respond_to do |format|
      format.html
        format.json do
          if current_user.fpl_account&.zipcode
            fpl_accounts = FplAccount.where(zipcode: current_user.fpl_account&.zipcode)
          else
            fpl_accounts = []
          end
        render json: fpl_accounts
      end
    end
  end

  def create
    fpl_account = FplAccount.find_or_initialize_by(user: current_user)
    fpl_account.assign_attributes(username: params[:username], password: params[:password])
    if fpl_account.save
      fpl_account.scrape_for_bills
      redirect_to dashboard_url, notice: "Successfully added FPL Account!"
    else
      redirect_to dashboard_url, alert: task.errors.full_messages.to_sentence.capitalize
    end
  end

  def destroy
    current_user.fpl_account&.destroy
    redirect_back fallback_location: root_url, notice: "FPL Account successfully deleted"
  end
end
