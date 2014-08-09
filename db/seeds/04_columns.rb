columns = [
  {
    name: "Test Column 1",
    sprint_id: Sprint.first.id
  }
]

columns.each do |column|
  Column.where(
    name: column[:name],
    slug: column[:name].parameterize,
    sprint_id: column[:sprint_id]
  ).first_or_create
end