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
  address = 'somewhere in Berlin'
  genre = 'BreakCore'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  file = URI.open('app/assets/images/users/sebi.jpeg')
  new_user.photo.attach(io: file, filename: 'sebi.jpeg', content_type: 'image/jpg')
  new_user = User.create!(email: email, address: address, genre: genre, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'sebastian.hahne@jamable.com'
  pw = '123456'
  username = 'Basti'
  address = 'somewhere in Berlin'
  genre = 'Drum and Base'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  file = URI.open('app/assets/images/users/basti.jpeg')
  new_user.photo.attach(io: file, filename: 'basti.jpeg', content_type: 'image/jpg')
  new_user = User.create!(email: email, address: address, genre: genre, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'moritz.kork@jamable.com'
  pw = '123456'
  username = 'Moe'
  address = 'somewhere in Berlin'
  genre = 'DeathMetal'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  file = URI.open('app/assets/images/users/moritz.jpeg')
  new_user.photo.attach(io: file, filename: 'moritz.jpeg', content_type: 'image/jpg')
  new_user = User.create!(email: email, address: address, genre: genre, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'benj.riethmuller@jamable.com'
  pw = '123456'
  username = 'Benj'
  address = 'somewhere in Berlin'
  genre = 'Psychadelic Rock'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  file = URI.open('app/assets/images/users/benj.jpeg')
  new_user.photo.attach(io: file, filename: 'benj.jpeg', content_type: 'image/jpg')
  new_user = User.create!(email: email, address: address, genre: genre, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

puts 'Done'
