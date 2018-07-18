class DogShow

  attr_reader :calculator, :dogs

  def initialize(args={})
    @dogs = args.fetch(:dogs, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

end
