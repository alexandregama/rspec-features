class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher - concise version' do
  describe ProfessionalWrestler.new('Stone Cold', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold', finishing_move: 'Stunner')

      expect(subject).to have_attributes(name: 'Stone Cold')
      expect(subject).to have_attributes(finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold', finishing_move: 'Stunner') }
    it { is_expected.to have_attributes(finishing_move: 'Stunner') }
  end
end

RSpec.describe 'have_attributes matcher - full version' do
  let(:professional) { ProfessionalWrestler.new('Stone Cold', 'Stunner') }

  describe 'Tests ProfessionalWrestler class' do
    it 'checks for object attributes and proper values' do
      expect(professional).to have_attributes(name: 'Stone Cold', finishing_move: 'Stunner')

      expect(professional).to have_attributes(name: 'Stone Cold')
      expect(professional).to have_attributes(finishing_move: 'Stunner')
    end
  end
end
