require 'open-uri'

# destroying old database
puts 'Burning down old database...'
puts 'Killing all the users...'
User.destroy_all
# puts 'Kurt cobaining all the instruments...'
# Instrument.destroy_all

puts 'Cloning users'

# creating sebi
  file = URI.open('app/assets/images/users/sebi.jpeg')
  new_user = User.new do |u|
    u.email = "sebastian.remm@jamable.com"
    u.password = "remm1234"
    u.password_confirmation = "remm1234"
    u.address = "somewhere in Berlin"
    u.genres = "BreakCore"
    u.username = "Sebi"
    u.photo.attach(io: file, filename: 'sebi.jpeg', content_type: 'image/jpeg')
  end
  new_user.save
  mediafiles = "#{new_user.username} has no mediafiles yet"
  caption = "Hi, my name is #{new_user.username}. I like to jam !"
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

# creating basti
  file = URI.open('app/assets/images/users/basti.png')
  new_user = User.new do |u|
    u.email = "sebastian.hahne@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.genres = "Drum and Base"
    u.username = "Basti"
    u.photo.attach(io: file, filename: 'basti.jpeg', content_type: 'image/png')
  end
  new_user.save
  mediafiles = "#{new_user.username} has no mediafiles yet"
  caption = "Hi, my name is #{new_user.username}. I like to jam !"
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

# creating moritz
  file = URI.open('app/assets/images/users/moritz.png')
  new_user = User.new do |u|
    u.email = "moritz.kork@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.genres = "DeathMetal"
    u.username = "moritz"
    u.photo.attach(io: file, filename: 'moritz.jpeg', content_type: 'image/png')
  end
  new_user.save
  mediafiles = "#{new_user.username} has no mediafiles yet"
  caption = "Hi, my name is #{new_user.username}. I like to jam !"
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

# creating benj
  file = URI.open('app/assets/images/users/benj.jpg')
  new_user = User.new do |u|
    u.email = "benj.riethmuller@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.genres = "Psychadelic Rock"
    u.username = "benj"
    u.photo.attach(io: file, filename: 'benj.jpeg', content_type: 'image/jpg')
  end
  new_user.save
  mediafiles = "#{new_user.username} has no mediafiles yet"
  caption = "Hi, my name is #{new_user.username}. I like to jam !"
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

puts 'Done'
