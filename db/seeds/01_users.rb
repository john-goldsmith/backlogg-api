users = [
  {
    first_name: "John",
    last_name: "G",
    screen_name: "johngoldsm1",
    email: "johngoldsm1@gmail.com"
  }
]

users.each do |user|
  User.where(
    first_name: user[:first_name],
    last_name: user[:last_name],
    screen_name: user[:screen_name],
    email: user[:email]
  ).first_or_create
end