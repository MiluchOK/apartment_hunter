class OrderMailer < ApplicationMailer
  def sample_email
    mail(to: 'milyukov.alexey@gmail.com', subject: 'Sample Email')
    # mail(to: 'phycomycetes@gmail.com', subject: 'Sample Email')
  end
end
