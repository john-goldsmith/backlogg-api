templates = [
  {
    name: "Scrum / Kanban",
    is_active: true,
    columns: [
      {
        name: "Backlog"
      },
      {
        name: "To do"
      },
      {
        name: "In progress"
      },
      {
        name: "Done"
      }
    ]
  },
  {
    name: "Week",
    is_active: true,
    columns: [
      {
        name: "Monday"
      },
      {
        name: "Tuesday"
      },
      {
        name: "Wednesday"
      },
      {
        name: "Thursday"
      },
      {
        name: "Friday"
      },
      {
        name: "Saturday"
      },
      {
        name: "Sunday"
      }
    ]
  }
]

templates.each do |template|
  template_instance = Template.where(
    name: template[:name],
    slug: template[:name].parameterize,
    is_active: template[:is_active]
  ).first_or_create
  template[:columns].each do |template_column|
    TemplateColumn.where(
      template_id: template_instance.id,
      name: template_column[:name]
    ).first_or_create
  end
end