class Booking < ApplicationRecord
  belongs_to :artwork
  belongs_to :user


  def total_price
    raise
    # Je récupère le start et end date
    # Je récupère le prix de l'oeuvre au jour
    # Je calcule la différence entre mes 2 dates après harmonisation
    # Je return dans une variable d'instance le date diff * prix
  end
end
