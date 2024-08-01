class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end

RSpec.describe School do
  # this block of code is going to run before each example
  # we need to use @ sign to indicate that this is an instance variable
  # @school is not a local instance anymore. Instead it's a instance variable
  # this is also an example of a hook
  before do
    puts 'Running the before block for each example'
    @school = School.new('Beverly Hills')
  end

  def new_school
    School.new('Beverly Hills')
  end

  it 'has a name' do
    expect(new_school.name).to eq('Beverly Hills')
  end

  it 'should start off with no students' do
    expect(@school.students).to eq([])
  end
end

RSpec.describe 'School with the let method' do
  let(:school) { School.new('Beverly Hills') }

  it 'has a name' do
    expect(school.name).to eq('Beverly Hills')
  end

  it 'has empty list of students' do
    expect(school.students).to eq([])
  end
end

