class DogShow

  attr_reader :calculator, :dogs

  def initialize(args={})
    @dogs = args.fetch(:dogs, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

  def rankings
    rounds = @dogs.length - 1
    sort_dogs = @dogs

    loop do 
      swapped = false

      (rounds).times do |i|
        if @calculator.points_for_dog(sort_dogs[i]) < @calculator.points_for_dog(sort_dogs[i + 1])
           sort_dogs[i], sort_dogs[i + 1] = sort_dogs[i + 1], sort_dogs[i]

          swapped = true
        end 
      end 
      break if not swapped 
    end 
    sort_dogs
  end 

  def best_dogs
    best_half = @dogs.length * (0.5)
    return rankings[0...best_half]
  end 

  def ranking_for(pup)
    sorted_dogs = rankings
    loops = 1

     sorted_dogs.each do |i|
       if pup == i.name
        return loops
       else 
        loops += 1
       end 
      end 
   end 

end 





