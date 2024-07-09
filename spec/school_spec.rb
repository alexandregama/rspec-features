class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = [] 
  end
end

RSpec.describe School do
  before do
    @school = School.new('Beverly Hills')
  end
  
  it 'has a name' do
    expect(@school.name).to eq('Beverly Hills')
  end

  it 'should start off with no students' do
    expect(@school.students).to eq([])
  end
end