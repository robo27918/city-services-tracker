# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Issue.destroy_all
User.destroy_all

# ===============
# Create users seed data
# ===============
users = [
    {name:"Alice Johnson", email:"alice@example.com", phone:"344-3431"},
    {name:"Bob Johnson", email:"bob@example.com", phone:"123-3431"},
    {name:"Jack Torrance", email:"jack@example.com", phone:"789-1234"},
    {name:"Joey Wheeler", email:"joey@example.com", phone:"912-3431"},
    {name:"Annie Hall", email:"hall@example.com", phone:"333-3333"},

]

users.each do |user_data|
    User.create(user_data)
end

alice = User.find_by(name:"Alice Johnson")
bob = User.find_by(name:"Bob Johnson")
jack = User.find_by(name:"Jack Torrance")
joey = User.find_by(name:"Joey Wheeler")
annie = User.find_by(name:"Annie Hall")

# ===============
# Create issues with status
# ===============

Issue.create!(description:"Large pothole near 3rd ave",status:"open",location:"Main St & 3rd Avenue",issue_type:"Road",user:alice)
Issue.create!(description:"Dead skunk on the side of road",status:"open",location:"Keller Avenue and 3rd Avenue",issue_type:"Road",user:bob)
Issue.create!(description:"Gathering of zombie on Main St.",status:"open",location:"Main St & 3rd Avenue",issue_type:"Other",user:joey)

