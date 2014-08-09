tag_types = [
  {
    name: "Low priority",
    color: "blue",
    is_active: true
  },
  {
    name: "Medium priority",
    color: "yellow",
    is_active: true
  },
  {
    name: "High priority",
    color: "red",
    is_active: true
  }
]

tag_types.each do |tag_type|
  TagType.where(
    name: tag_type[:name],
    color: tag_type[:color],
    is_active: tag_type[:is_active]
  ).first_or_create
end