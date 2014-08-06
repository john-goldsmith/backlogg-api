comments = [
  {
    body: "Test Comment 1"
  }
]

comments.each do |comment|
  task = Task.first
  user = User.first
  # if task && user
    Comment.where(
      body: comment[:body],
      task_id: task.id,
      user_id: user.id
    ).first_or_create
  # end
end