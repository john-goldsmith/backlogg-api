projects = [
  {
    name: "Test Project 1",
    user_id: User.first.id,
    code: "tp"
  }
]

projects.each do |project|
  Project.where(
    name: project[:name],
    slug: project[:name].parameterize,
    user_id: project[:user_id],
    code: project[:code]
  ).first_or_create
end