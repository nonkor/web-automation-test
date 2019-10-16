class DashboardPage
  include Watirsome

  div :root, class: 'root-component-wrapper'
  span :account, text: 'Account'
  h1 :header, text: 'Choose your delivery slot'

  def signed_in?
    root_div
    account_span.present?
  end
end
