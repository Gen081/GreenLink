class BillScrapeJob < ApplicationJob

  def perform(fpl_account)
    browser = Watir::Browser.new :chrome, headless: true
    browser.goto "http://fpl.com"
    browser.input(name: "username").send_keys(fpl_account.username)
    browser.input(name: "password").send_keys(fpl_account.password, :return)
    sleep 5
    browser.element(text: "Visit Energy Dashboard").click
    sleep 5
    magic_script = browser.scripts.find{|s| s.html.include?('Billing Period')}.html
    regex = /Billing Period: (.*?) to (.*?){br}Bill Amount: \$(.*?){br}Billed kWh: (.*?) kWh/
    magic_script.scan(regex) do |start_date, end_date, bill_amount, kWh|
      fpl_account.bills.find_or_create_by(
        start_date:     Date.parse(start_date),
        end_date:       Date.parse(end_date),
        kilowatt_hours: kWh,
        amount_cents:   (bill_amount.to_f * 100).to_i
      )
    end
  end

end
