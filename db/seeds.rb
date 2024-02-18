# frozen_string_literal: true

return unless Rails.env.development?

require 'database_cleaner-active_record'

puts 'Cleaning Database'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

puts 'Fabricating Developers'
Fabricate(:developer, name: '343 Studios')
Fabricate(:developer, name: 'Bioware')
Fabricate(:developer, name: 'Bluepoint Games')
Fabricate(:developer, name: 'Insomniac Games')
Fabricate(:developer, name: 'Psyonix')

puts 'Fabricating Publishers'
Fabricate(:developer, name: 'Electronic Arts')
Fabricate(:developer, name: 'Microsoft')
Fabricate(:developer, name: 'Psyonix')
Fabricate(:publisher, name: 'Sony Interactive Entertainment')

puts 'Fabricating Platforms'
Fabricate(:platform, name: 'PC')
Fabricate(:platform, name: 'PS4')
Fabricate(:platform, name: 'PS5')
Fabricate(:platform, name: 'Xbox One')
Fabricate(:platform, name: 'Xbox Series')
Fabricate(:platform, name: 'Nintendo Switch')

puts 'Fabricating Genres'
Fabricate(:genre, name: 'Action')
Fabricate(:genre, name: 'Adventure')
Fabricate(:genre, name: 'Puzzle')
Fabricate(:genre, name: 'Role-Playing')
Fabricate(:genre, name: 'Simulation')
Fabricate(:genre, name: 'Strategy')
Fabricate(:genre, name: 'Sports')

puts 'Fabricating Video Games'
Fabricate(:video_game, title: 'Anthem',
                       description: 'Anthem is an online multiplayer action role-playing video game developed by BioWare and published by Electronic Arts. The game was released worldwide for PlayStation 4, Windows, and Xbox One on February 22, 2019.')
Fabricate(:video_game, title: "Demon's Souls",
                       description: "Demon's Souls is a 2020 action role-playing game developed by Bluepoint Games and published by Sony Interactive Entertainment for the PlayStation 5. The game was released as a launch title for the PlayStation 5 in November. It is a remake of Demon's Souls, originally developed by FromSoftware for the PlayStation 3 in 2009.")
Fabricate(:video_game, title: 'Halo Reach',
                       description: 'Halo: Reach is a 2010 first-person shooter video game developed by Bungie and published by Microsoft Game Studios, originally for the Xbox 360. The sixth installment in the Halo series and a direct prequel to Halo: Combat Evolved, Reach was released worldwide in September 2010.')
Fabricate(:video_game, title: 'Mass Effect: Andromeda',
                       description: 'Mass Effect: Andromeda is a 2017 action role-playing video game developed by BioWare and published by Electronic Arts. It is the fourth major entry in the Mass Effect series and was released in March 2017 for PlayStation 4, Windows, and Xbox One.')
Fabricate(:video_game, title: "Marvel's Spiderman",
                       description: "Marvel's Spider-Man[b] is a 2018 action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment. Based on the Marvel Comics character Spider-Man, it tells an original narrative that is inspired by the long-running comic book mythology, while also drawing from various adaptations in other media.")
Fabricate(:video_game, title: 'Rocket League',
                       description: 'Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for PlayStation 4 and Windows in July 2015, with ports for Xbox One and Nintendo Switch being released later on.')
Fabricate(:video_game, title: 'Shadow of the Colossus',
                       description: 'Shadow of the Colossus is a 2018 action-adventure video game developed by Bluepoint Games and published by Sony Interactive Entertainment for the PlayStation 4. It is a remake of the original game developed by Team Ico and released in 2005 for the PlayStation 2, using ultra-high definition art assets.')
