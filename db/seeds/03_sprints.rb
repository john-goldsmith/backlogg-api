sprints = [
  {
    name: "Test Sprint 1",
    is_active: true,
    starts_at: DateTime.now.to_time,
    ends_at: (DateTime.now + 14).to_time,
    project_id: Project.first.id
  }
]

sprints.each do |sprint|
  Sprint.where(
    name: sprint[:name],
    slug: sprint[:name].parameterize,
    is_active: sprint[:is_active],
    starts_at: sprint[:starts_at],
    ends_at: sprint[:ends_at],
    project_id: sprint[:project_id]
  ).first_or_create
end