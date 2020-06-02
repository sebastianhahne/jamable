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
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'sebastian.hahne@jamable.com'
  pw = '123456'
  username = 'Basti'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'moritz.kork@jamable.com'
  pw = '123456'
  username = 'Moe'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

  email = 'benj.riethmuller@jamable.com'
  pw = '123456'
  username = 'Benj'
  mediafiles = "#{username} has no mediafiles yet"
  caption = "Hi, my name is #{username}. I like to jam !"
  new_user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)

puts 'Done'
