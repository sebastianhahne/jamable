require 'open-uri'

# destroying old database
puts 'Burning down old database...'
puts 'Killing all the users...'
User.destroy_all
# puts 'Kurt cobaining all the instruments...'
# Instrument.destroy_all

# Creating 5 users
puts 'Cloning users'

  email = 'sebastian.remm@jamable.com'
  pw = '123456'
  username = 'Sebi'
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)

  email = 'sebastian.hahne@jamable.com'
  pw = '123456'
  username = 'Basti'
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)

  email = 'moritz.kork@jamable.com'
  pw = '123456'
  username = 'Moe'
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)

  email = 'benj.riethmuller@jamable.com'
  pw = '123456'
  username = 'Benj'
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)

puts 'Done'
