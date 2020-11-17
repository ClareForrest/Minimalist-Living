user1 = User.create(email: 'clare@test.com', password: '123456')
user2 = User.create(email: 'francie@test.com', password: '123456')

10.times do
  Problem.create(title: 'problem heading - k', body: 'kitchen category', category: 'kitchen', user: user1)
end

10.times do
  Problem.create(title: 'problem heading - h', body: 'hallway category', category: 'hallway', user: user2)
end

10.times do
  Problem.create(title: 'problem heading - b', body: 'bedroom category', category: 'bedroom', user: user1)
end

10.times do
  p = Problem.create(title: 'problem heading - bth', body: 'bathroom category', category: 'bathroom', user: user2)
  p.solutions.create(title: 'solution heading - bth', body: 'solution bathroom', price: 2, user: user2)
  p.solutions.create(title: 'solution heading - bth', body: 'solution bathroom', price: 2, user: user1)
end
