task_types = [
  {
    name: "Epic",
    icon: "epic.gif",
    comments_allowed: true,
    children_allowed: true,
    is_active: true
  },
  {
    name: "Story",
    icon: "story.gif",
    comments_allowed: true,
    children_allowed: true,
    is_active: true
  },
  {
    name: "Subtask",
    icon: "subtask.gif",
    comments_allowed: true,
    children_allowed: false,
    is_active: true
  },
  {
    name: "Bug",
    icon: "bug.gif",
    comments_allowed: true,
    children_allowed: false,
    is_active: true
  }
]

task_types.each do |task_type|
  TaskType.where(
    name: task_type[:name],
    icon: task_type[:icon],
    comments_allowed: task_type[:comments_allowed],
    is_active: task_type[:is_active]
  ).first_or_create
end