10.times do
  Problem.create(title: 'problem heading - k', body: 'kitchen category', category: 'kitchen', user_id: 1)
end

10.times do
  Problem.create(title: 'problem heading - h', body: 'hallway category', category: 'hallway', user_id: 1)
end

10.times do
  Problem.create(title: 'problem heading - b', body: 'bedroom category', category: 'bedroom', user_id: 1)
end

10.times do
  Problem.create(title: 'problem heading - bth', body: 'bathroom category', category: 'bathroom', user_id: 1)
end

# def create
#   @problem = Problem.find(params[:problem_id])
#   @solution = @problem.solutions.new(solution_params)
  
#   @solution.user = current_user
#   @solution.save
  
#   p @solution.errors.full_messages
#   redirect_to problem_solutions_path
#   end