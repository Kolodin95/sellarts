require "open-uri"

puts "Deleting all"
Booking.delete_all
Artwork.delete_all
User.delete_all

puts "creating user"
user1 = User.create(email: 'axel@wanadoo.com', name: 'Axel', password: "1234567")
user1.save!
user2 = User.new(email: 'tristan@hotmail.com', name: 'Tristan', password: "1234567")
user2.save!
user3 = User.new(email: 'jean@gmail.com', name: 'Jean', password: "1234567")
user3.save!

puts("Associating 3 artworks to the user 1")
# 1 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/991838?t=GBHQzKaBQHyW5H3-D5Pqdw')
artwork = Artwork.create(title: 'Bethsabée au bain', author: "Rembrandt", creation_date: "1654",
                         price: rand(100..10_000), user_id: user1.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'Rembrandt-bain.png', content_type: 'image/png')
artwork.save!
# 2 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/891110?t=75USse4bfvDCQYyDCUpaBw')
artwork = Artwork.create(title: 'Le Prêteur et sa femme', author: "Quentin Metsys", creation_date: "1514",
                         price: rand(100..10_000), user_id: user1.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'metsys-femme.png', content_type: 'image/png')
artwork.save!
# 3 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/211594?t=HFL9HrHdr2sZPTMajnEhYw')
artwork = Artwork.create(title: 'Arearea (Joyeusetés)', author: "Paul Gauguin", creation_date: "1892",
                         price: rand(100..10_000), user_id: user1.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'gauguin-arearea.png', content_type: 'image/png')
artwork.save!



puts "Associating 3 artworks to the user 2"
# 1 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/196854?t=KpVpkzEN3TuajTvPE6FOTw')
artwork = Artwork.create(title: 'Le Dix Huit Brumaire,', author: "François Bouchot", creation_date: "1799",
                         price: rand(100..10_000), user_id: user2.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'bouchot-brumaire.png', content_type: 'image/png')
artwork.save!
# 2 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/211860?t=hMFsD9VNRofyE5MbHjQKhA')
artwork = Artwork.create(title: 'Un après-dîner à Ornans', author: "Gustave Courbet", creation_date: "1838",
                         price: rand(100..10_000), user_id: user2.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'courbet-ornans.png', content_type: 'image/png')
artwork.save!
# 3 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/131040?t=BEkYge6RglmixvrA-pmsTg')
artwork = Artwork.create(title: 'Installation du Conseil d\'Etat', author: "Louis Charles Auguste Couder", creation_date: "1856",
                         price: rand(100..10_000), user_id: user2.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'louis-charles-etat.png', content_type: 'image/png')
artwork.save!

puts ("Associating 3 artworks to the user 3")
# 1 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/205969?t=hBOpLkUJEBNyiPX3tdSL5Q')
artwork = Artwork.create(title: 'Fritillaires couronne impériale dans un vase de cuivre', author: "Vincent Van Gogh", creation_date: "1886",
                         price: rand(100..10_000), user_id: user3.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'van-gogh-cuivre.png', content_type: 'image/png')
artwork.save!
# 2 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/150682?t=F8JQ7LWihSvKo1JXQ3HaqQ')
artwork = Artwork.create(title: 'Autoportait', author: "Vincent Van Gogh", creation_date: "1889",
                         price: rand(100..10_000), user_id: user3.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'gogh-autoportait.png', content_type: 'image/png')
artwork.save!
# 3 artwork
file = URI.open('https://api.art.rmngp.fr/v1/images/17/208813?t=Mz5TPhqU6qu-CnYOUQd_vQ')
artwork = Artwork.create(title: 'Paysannes bretonnes', author: "Paul Gauguin", creation_date: "1894",
                         price: rand(100..10_000), user_id: user3.id, denomination: "Tableau")
artwork.photo.attach(io: file, filename: 'gauguin-paysannes.png', content_type: 'image/png')
artwork.save!
