users = [
  {name: 'Jon', lname: 'Doe', email: 'e@example.com', role: 'admin' },
  {name: 'Jane', lname: 'Doe', email: 'e@example.com', role: 'clerk' }
]

users.each do |u|
  User.create(u)
end
