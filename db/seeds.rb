user1 = User.create(email: 'clare@test.com', password: '123456')
user2 = User.create(email: 'francie@test.com', password: '123456')

4.times do
  p = Problem.create(title: 'Need a dining table', body: 'My loungeroom is square and I have windows on two sides. I dont want the usual round/square dining table as this takes up too much space. Any ideas?', category: 'Living', user: user1)
  p.solutions.create(title: 'Bar table', body: 'I have a bar table as my dining table. Its narrow and sits along one wall affording me a great view out the window.', price: 200, user: user2)
end

4.times do
  p = Problem.create(title: 'Spice Rack', body: 'I have a pull out pantry but having the spices stored there means I have no space for anything else. Any ideas?', category: 'kitchen', user: user2)
  p.solutions.create(title: 'Picture ledge', body: 'Ive mounted a picture ledge to the wall and put our spices on this. Its narrow and is out of the way but also allows me to display the bright colors of the spices.', price: 20, user: user2)
end

4.times do
  Problem.create(title: 'problem heading - b', body: 'bedroom category', category: 'bedroom', user: user1)
end

4.times do
  p = Problem.create(title: 'problem heading - bth', body: 'bathroom category', category: 'bathroom', user: user2)
  s = p.solutions.create(title: 'solution heading - bth', body: 'solution bathroom', price: 2, user: user2)
  s.image.attach(io: File.open(Rails.root.to_s + '/app/assets/images/chair.jpg'), filename: 'chair.jpg', content_type: 'image/jpg')
  s.document.attach(io: File.open(Rails.root.to_s + '/app/assets/documents/Resume.pdf'), filename: 'Resume.pdf', content_type: 'application/pdf')
  p.solutions.create(title: 'solution heading - bth', body: 'solution bathroom', price: 2, user: user1)
end
