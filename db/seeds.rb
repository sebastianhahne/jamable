require 'open-uri'
require "csv"

genres_array = []
CSV.foreach("db/csv/genres.csv") do |row|
  genres_array << row[0]
end

instruments_array = []
CSV.foreach("db/csv/instruments_updated.csv") do |row|
  instruments_array << row[0]
end

# destroying old database
puts 'Burning down old database...'
puts 'Killing all the users...'
User.destroy_all
puts 'Kurt cobaining all the instruments...'
Instrument.destroy_all
puts 'Getting rid of old genres...'
Genre.destroy_all

puts 'Creating instruments...'
instruments_array.each do |i|
  Instrument.create(name: i)
end

puts 'Creating genres...'
genres_array.each do |i|
  Genre.create(name: i)
end

puts 'Cloning users'

# creating sebi
  file = URI.open('app/assets/images/users/sebi.jpeg')
  new_user = User.new do |u|
    u.email = "sebastian.remm@jamable.com"
    u.password = "remm1234"
    u.password_confirmation = "remm1234"
    u.address = "somewhere in Berlin"
    u.username = "Sebi"
    u.photo.attach(io: file, filename: 'sebi.jpeg', content_type: 'image/jpeg')
  end
    new_user.save!
    user_genre = UserGenre.new
    user_genre.user = new_user
    banana = genres_array.sample
    user_genre.genre = Genre.find_by(name: banana)
    user_genre.save!

    user_instrument = UserInstrument.new
    user_instrument.user = new_user
    banana = instruments_array.sample
    user_instrument.instrument = Instrument.find_by(name: banana)
    user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
    user_instrument.save!

    mediafiles = nil
    # caption = "Hi, my name is #{new_user.username}. I like to jam !"
    caption = "I'm jamming."
    caption = "All music is folk music. I ain’t never heard a horse sing a song."
    new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
    puts "User #{new_user.username} created"

# creating basti
  file = URI.open('app/assets/images/users/basti.png')
  new_user = User.new do |u|
    u.email = "sebastian.hahne@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.username = "Basti"
    u.photo.attach(io: file, filename: 'basti.png', content_type: 'image/png')
  end

  new_user.save!
  user_genre = UserGenre.new
  user_genre.user = new_user
  banana = genres_array.sample
  user_genre.genre = Genre.find_by(name: banana)
  user_genre.save!

  user_instrument = UserInstrument.new
  user_instrument.user = new_user
  banana = instruments_array.sample
  user_instrument.instrument = Instrument.find_by(name: banana)
  user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
  user_instrument.save!

  mediafiles = nil
  # caption = "Hi, my name is #{new_user.username}. I like to jam !"
  caption = "I don’t know anything about music, In my line you don’t have to."
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

# creating moritz
  file = URI.open('app/assets/images/users/moritz.png')
  new_user = User.new do |u|
    u.email = "moritz.kork@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.username = "Moritz"
    u.photo.attach(io: file, filename: 'moritz.png', content_type: 'image/png')
  end
  new_user.save!
  user_genre = UserGenre.new
  user_genre.user = new_user
  banana = genres_array.sample
  user_genre.genre = Genre.find_by(name: banana)
  user_genre.save!

  user_instrument = UserInstrument.new
  user_instrument.user = new_user
  banana = instruments_array.sample
  user_instrument.instrument = Instrument.find_by(name: banana)
  user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
  user_instrument.save!

  mediafiles = nil
  # caption = "Hi, my name is #{new_user.username}. I like to jam !"
    caption = "I’m sick to death of people saying we’ve made 11 albums that sound exactly the same. In fact, we’ve made 12 albums that sound exactly the same."
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

# creating benj
  file = URI.open('app/assets/images/users/benj.jpg')
  new_user = User.new do |u|
    u.email = "benj.riethmuller@jamable.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.address = "somewhere in Berlin"
    u.username = "Benj"
    u.photo.attach(io: file, filename: 'benj.jpg', content_type: 'image/jpg')
  end
  new_user.save!
  user_genre = UserGenre.new
  user_genre.user = new_user
  banana = genres_array.sample
  user_genre.genre = Genre.find_by(name: banana)
  user_genre.save!

  user_instrument = UserInstrument.new
  user_instrument.user = new_user
  banana = instruments_array.sample
  user_instrument.instrument = Instrument.find_by(name: banana)
  user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
  user_instrument.save!

  mediafiles = nil
  # caption = "Hi, my name is #{new_user.username}. I like to jam !"
    caption = "All the good music has already been written by people with wigs and stuff."
  new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
  puts "User #{new_user.username} created"

  # creating asil
    file = URI.open('app/assets/images/users/asil.jpeg')
    new_user = User.new do |u|
      u.email = "asil@jamable.com"
      u.password = "123456"
      u.password_confirmation = "123456"
      u.address = "somewhere in Berlin"
      u.username = "Asil"
      u.photo.attach(io: file, filename: 'asil.jpeg', content_type: 'image/jpeg')
    end
    new_user.save!
    user_genre = UserGenre.new
    user_genre.user = new_user
    banana = genres_array.sample
    user_genre.genre = Genre.find_by(name: banana)
    user_genre.save!

    user_instrument = UserInstrument.new
    user_instrument.user = new_user
    banana = instruments_array.sample
    user_instrument.instrument = Instrument.find_by(name: banana)
    user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
    user_instrument.save!

    mediafiles = nil
    # caption = "Hi, my name is #{new_user.username}. I like to jam !"
    caption = "There are two kinds of artists left: those who endorse Pepsi and those who simply won’t."
    new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
    puts "User #{new_user.username} created"

    # creating carina
      file = URI.open('app/assets/images/users/carina.jpeg')
      new_user = User.new do |u|
        u.email = "carina@jamable.com"
        u.password = "123456"
        u.password_confirmation = "123456"
        u.address = "somewhere in Berlin"
        u.username = "Carina"
        u.photo.attach(io: file, filename: 'carina.jpeg', content_type: 'image/jpeg')
      end
      new_user.save!
      user_genre = UserGenre.new
      user_genre.user = new_user
      banana = genres_array.sample
      user_genre.genre = Genre.find_by(name: banana)
      user_genre.save!

      user_instrument = UserInstrument.new
      user_instrument.user = new_user
      banana = instruments_array.sample
      user_instrument.instrument = Instrument.find_by(name: banana)
      user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
      user_instrument.save!

      mediafiles = nil
      caption = "Hi, my name is #{new_user.username}. I like to jam !"
      new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
      puts "User #{new_user.username} created"

      # creating clement
        file = URI.open('app/assets/images/users/clement.jpeg')
        new_user = User.new do |u|
          u.email = "clement@jamable.com"
          u.password = "123456"
          u.password_confirmation = "123456"
          u.address = "somewhere in Berlin"
          u.username = "clement"
          u.photo.attach(io: file, filename: 'clement.jpeg', content_type: 'image/jpeg')
        end
        new_user.save!
        user_genre = UserGenre.new
        user_genre.user = new_user
        banana = genres_array.sample
        user_genre.genre = Genre.find_by(name: banana)
        user_genre.save!

        user_instrument = UserInstrument.new
        user_instrument.user = new_user
        banana = instruments_array.sample
        user_instrument.instrument = Instrument.find_by(name: banana)
        user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
        user_instrument.save!

        mediafiles = nil
        # caption = "Hi, my name is #{new_user.username}. I like to jam !"
        caption = "I don’t deserve a Songwriters Hall of Fame Award. But fifteen years ago, I had a brain operation and I didn’t deserve that, either. So I’ll keep it!"
        new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
        puts "User #{new_user.username} created"

        # creating felix
          file = URI.open('app/assets/images/users/felix.jpeg')
          new_user = User.new do |u|
            u.email = "felix@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Felix"
            u.photo.attach(io: file, filename: 'felix.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "I’d rather be a musician than a rock star."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

        # creating jasmin
          file = URI.open('app/assets/images/users/jasmin.jpeg')
          new_user = User.new do |u|
            u.email = "jasmin@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Jasmin"
            u.photo.attach(io: file, filename: 'jasmin.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "I smash guitars because I like them."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

        # creating jorge
          file = URI.open('app/assets/images/users/jorge.jpeg')
          new_user = User.new do |u|
            u.email = "jorge@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Jorge"
            u.photo.attach(io: file, filename: 'jorge.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "I never had much interest in the piano until I realized that every time I played, a girl would appear on the piano bench to my left and another to my right."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating leo
          file = URI.open('app/assets/images/users/leo.jpeg')
          new_user = User.new do |u|
            u.email = "leo@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Leo"
            u.photo.attach(io: file, filename: 'leo.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "It’s easy to play any musical instrument: all you have to do is touch the right key at the right time and the instrument will play itself."

          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating leon
          file = URI.open('app/assets/images/users/leon.jpeg')
          new_user = User.new do |u|
            u.email = "leon@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Leon"
            u.photo.attach(io: file, filename: 'leon.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "Let me be clear about this: I don’t have a drug problem, I have a police problem."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating leon_k
          file = URI.open('app/assets/images/users/leon_k.jpeg')
          new_user = User.new do |u|
            u.email = "leon_k@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Leon_k"
            u.photo.attach(io: file, filename: 'leon_k.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "If you’re listening to a rock star to get your information on who to vote for, you’re a bigger moron than they are."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating liz
          file = URI.open('app/assets/images/users/liz.jpeg')
          new_user = User.new do |u|
            u.email = "liz@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "Liz"
            u.photo.attach(io: file, filename: 'liz.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "Talking about music is like dancing about architecture."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating matt
          file = URI.open('app/assets/images/users/matt.jpeg')
          new_user = User.new do |u|
            u.email = "matt@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "matt"
            u.photo.attach(io: file, filename: 'matt.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "Too many pieces of music finish too long after the end."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating monti
          file = URI.open('app/assets/images/users/monti.jpeg')
          new_user = User.new do |u|
            u.email = "monti@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "monti"
            u.photo.attach(io: file, filename: 'monti.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "To listen is an effort, and just to hear is no merit. A duck hears also."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

          # creating ryan
            file = URI.open('app/assets/images/users/ryan.jpeg')
            new_user = User.new do |u|
              u.email = "ryan@jamable.com"
              u.password = "123456"
              u.password_confirmation = "123456"
              u.address = "somewhere in Berlin"
              u.username = "ryan"
              u.photo.attach(io: file, filename: 'ryan.jpeg', content_type: 'image/jpeg')
            end
            new_user.save!
            user_genre = UserGenre.new
            user_genre.user = new_user
            banana = genres_array.sample
            user_genre.genre = Genre.find_by(name: banana)
            user_genre.save!

            user_instrument = UserInstrument.new
            user_instrument.user = new_user
            banana = instruments_array.sample
            user_instrument.instrument = Instrument.find_by(name: banana)
            user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
            user_instrument.save!

            mediafiles = nil
            # caption = "Hi, my name is #{new_user.username}. I like to jam !"
            caption = "There’s nothing like the eureka moment of knocking off a song that didn’t exist before – I won’t compare it to sex, but it lasts longer."
            new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
            puts "User #{new_user.username} created"

                    # creating santi
          file = URI.open('app/assets/images/users/santi.jpeg')
          new_user = User.new do |u|
            u.email = "santi@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "santi"
            u.photo.attach(io: file, filename: 'santi.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "Jazz is not dead, it just smells funny."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating sina
          file = URI.open('app/assets/images/users/sina.jpeg')
          new_user = User.new do |u|
            u.email = "sina@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "sina"
            u.photo.attach(io: file, filename: 'sina.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          mediafiles = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "Competitions are for horses, not artists."
          new_post = Post.create!(mediafiles: mediafiles, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

                  # creating valerie
          file = URI.open('app/assets/images/users/valerie.jpeg')
          new_user = User.new do |u|
            u.email = "valerie@jamable.com"
            u.password = "123456"
            u.password_confirmation = "123456"
            u.address = "somewhere in Berlin"
            u.username = "valerie"
            u.photo.attach(io: file, filename: 'valerie.jpeg', content_type: 'image/jpeg')
          end
          new_user.save!
          user_genre = UserGenre.new
          user_genre.user = new_user
          banana = genres_array.sample
          user_genre.genre = Genre.find_by(name: banana)
          user_genre.save!

          user_instrument = UserInstrument.new
          user_instrument.user = new_user
          banana = instruments_array.sample
          user_instrument.instrument = Instrument.find_by(name: banana)
          user_instrument.skill_level = ['Beginner', 'Intermediate', 'Expert'].sample
          user_instrument.save!

          pictures = nil
          # caption = "Hi, my name is #{new_user.username}. I like to jam !"
          caption = "After I saw Jimmy play, I just went home and wondered what the f*** I was going to do with my life."

          new_post = Post.create!(pictures: pictures, caption: caption, user: new_user)
          puts "User #{new_user.username} created"

# puts 'Done'

puts "destroying chatrooms"
Chatroom.destroy_all
puts "creating test chatroom"
Chatroom.create!(name: 'general')
puts "all done"

# new_post = Post.create!(caption: caption, user: new_user)
# new_post.pictures.attach

