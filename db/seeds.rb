# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User data
userData = [
  ['John Doe', 'johndoe@email.com'],
  ['Jenny Nguyen', 'jenny643@gmail.com'],
  ['Jen Doe', 'jendoe@email.com'],
  ['Luke Dam', 'luke2233@email.com'],
  ['Ava O\' Brian', 'ava33221x@email.com'],
  ['Johnny Huynh', '***REMOVED***'],
]

# Create user data
userData.each do |name, email|
  User.create(name: name, email: email)
end

# Crate courses
# Real course information is referenced from http://www1.rmit.edu.au/courses/
webProgramming = Course.create(name: 'Web Programming', prerequisite: 'Programming Techniques', description: 'The course introduces you to the basic concepts of the World Wide Web, and the principles and tools that are used to develop Web applications. The course will provide an overview of Internet technology and will introduce you to current Web protocols, client side and server side programming, communication and design.')
progTechniques = Course.create(name: 'Programming Techniques', prerequisite: 'None', description: 'This course introduces programming techniques, including Object-Oriented programming using the Java programming language. This course covers algorithm development using standard control structures, design methods such as step-wise refinement, the object oriented programming framework, the use of standard Java classes and interfaces, the use of container classes, disk file processing and introduces techniques for code reuse.')
progFundamentals = Course.create(name: 'Programming Fundamentals', prerequisite: 'None', description: 'Programming skill represents a generic problem solving ability, and is considered essential for anyone involved in the development and maintenance of software systems.')

# Create categories
webDev = Category.create(name: 'Web Development')

# Assign courses to categories
webProgramming.categories << webDev
progTechniques.categories << webDev
progFundamentals.categories << webDev

# Create locations
locationOne = Location.create(name: '080.04.006')
locationTwo = Location.create(name: '056.05.097')
locationThree = Location.create(name: '057.03.010')
locationFour = Location.create(name: '080.04.011')

# Assign courses to locations
webProgramming.locations << locationOne
webProgramming.locations << locationTwo
progTechniques.locations << locationFour
progFundamentals.locations << locationOne
progFundamentals.locations << locationTwo
progFundamentals.locations << locationThree
progFundamentals.locations << locationFour