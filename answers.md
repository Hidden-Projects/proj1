# Q0: Why is this error being thrown?
#   A0: The controller for Pokemon doesn't exist, so the rails app is complaining.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
#   A1: They were seeded from the list of Pokemon with randomly-generated stats.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
#   A2: Redirects you to capture, and passes in the id of the pokemon so it can actually be added to your
#   list of pokemons in the database.

# Question 3: What would you name your own Pokemon?
#   A3: Omnivorp

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
#   A4: I passed in trainer_path (which is how you show the trainer's profile) as well as the trainer id as a
#   parameter, which is needed to know which trainer to display.  (Sidenote: I named the pokemon's id 'pid'
#   in order to differentiate between the trainer and the pokemon's id.)

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
#   A5: The human-readable string containing the error message is stored in flash[:error] which can then be
#   displayed.

# Give us feedback on the project and decal below!
#   Interesting project.  I think I definitely understand how Rails works better after completing this.
#   I'm definitely enjoying the class so far, although I wish the timing was different, or that watching
#   the webcast would be an acceptable substitute to coming to lecture.  I often have conflicts with
#   lecture -- Plus, the lecture is pretty late, so it's hard to stay completely awake and focused.


# Extra credit: Link your Heroku deployed app

# I also did the healing extra credit!
