class SignUpPage
  include Watirsome

  text_field :email, id: 'email'
  text_field :password, id: 'password'
  text_field :postcode, id: 'zipcode'
  label :subscribe, text: 'Add me to the mailing list'
  label :not_subscribe, text: 'No, thanks'
  button :submit, text: "Let's fix the food chain"

  def sign_up(email:, password:, postcode:, subscribe:)
    self.email = "#{email}+#{Testing.timestamp}@gmail.com"
    self.password = password
    self.postcode = postcode

    subscribe ? self.subscribe_label.click : self.not_subscribe_label.click
    submit
  end
end
