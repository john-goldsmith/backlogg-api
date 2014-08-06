tasks = [
  {
    name: "Test Task 1"
  }
]

tasks.each do |task|
  column = Column.first
  Task.where(
    name: task[:name],
    slug: task[:name].parameterize,
    column_id: column.id
  ).first_or_create if column
end