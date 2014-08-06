projects = [
  {
    name: "Test Project 1"
  }
]

projects.each do |project|
  user = User.first
  Project.where(
    name: project[:name],
    slug: project[:name].parameterize,
    user_id: user.id
  ).first_or_create
end