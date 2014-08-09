tasks = [
  {
    name: "Test Task 1",
    comments_allowed: true,
    column_id: Column.first.id
  },
  {
    name: "Test Task 2",
    comments_allowed: true,
    column_id: Column.first.id
  },
  {
    name: "Test Task 3",
    comments_allowed: true,
    column_id: Column.first.id
  },
  {
    name: "Test Task 4",
    comments_allowed: true,
    column_id: Column.first.id
  }
]

tasks.each do |task|
  Task.where(
    name: task[:name],
    slug: task[:name].parameterize,
    column_id: task[:column_id],
    comments_allowed: task[:comments_allowed]
  ).first_or_create
end