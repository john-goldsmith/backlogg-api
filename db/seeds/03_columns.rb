columns = [
  {
    name: "Test Column 1"
  }
]

columns.each do |column|
  project = Project.first
  Column.where(
    name: column[:name],
    slug: column[:name].parameterize,
    project_id: project.id
  ).first_or_create if project
end