tags = [
  {
    task_id: Task.first.id,
    tag_type_id: TagType.first.id
  }
]

tags.each do |tag|
  Tag.where(
    task_id: tag[:task_id],
    tag_type_id: tag[:tag_type_id]
  ).first_or_create
end