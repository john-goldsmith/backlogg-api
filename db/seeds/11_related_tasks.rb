related_tasks = [
  {
    task_id: Task.first.id,
    related_task_id: Task.second.id
  }
]

related_tasks.each do |related_task|
  RelatedTask.where(
    task_id: related_task[:task_id],
    related_task_id: related_task[:related_task_id]
  ).first_or_create
end