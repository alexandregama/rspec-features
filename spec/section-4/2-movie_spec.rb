class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    puts "Ready"
    sleep(3)
    true
  end

  def act
    "Acting"
  end

  def fall_of_ladder
    "No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_of_ladder
      actor.light_on_fire
    end
  end
end

RSpec.describe Movie do
  let(:actor) { double("actor", ready?: true, act: 'Any string', fall_of_ladder: 'Any string', light_on_fire: true) }
  subject { Movie.new(actor) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(actor).to receive(:ready?)
      expect(actor).to receive(:act)
      expect(actor).to receive(:fall_of_ladder)
      expect(actor).to receive(:light_on_fire)

      subject.start_shooting
    end
  end
end

RSpec.describe Movie do
  let(:actor) { double("actor", ready?: true, act: 'Any string', fall_of_ladder: 'Any string', light_on_fire: true) }
  let(:movie) { Movie.new(actor) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(actor).to receive(:ready?)
      expect(actor).to receive(:act)
      expect(actor).to receive(:fall_of_ladder)
      expect(actor).to receive(:light_on_fire)

      movie.start_shooting
    end
  end
end

RSpec.describe Movie do
  let(:actor) { double("actor") }
  let(:movie) { Movie.new(actor) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions and the actor is ready' do
      allow(actor).to receive(:ready?).and_return(true)
      
      expect(actor).to receive(:ready?)
      expect(actor).to receive(:act)
      expect(actor).to receive(:fall_of_ladder)
      expect(actor).to receive(:light_on_fire)
      
      movie.start_shooting
    end

    it 'does not expect any action from the actor and he is not ready' do
      allow(actor).to receive(:ready?).and_return(false)

      expect(actor).to receive(:ready?)
      expect(actor).not_to receive(:act)
      expect(actor).not_to receive(:fall_of_ladder)
      expect(actor).not_to receive(:light_on_fire)

      movie.start_shooting
    end
  end
end
