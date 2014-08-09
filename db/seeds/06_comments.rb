comments = [
  {
    body: "Test Comment 1",
    task_id: Task.first.id,
    user_id: User.first.id
  }
]

comments.each do |comment|
  Comment.where(
    body: comment[:body],
    task_id: comment[:task_id],
    user_id: comment[:user_id]
  ).first_or_create
end