RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked - using 1 method' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch')

    expect(stuntman.fall_off_ladder).to eq('Ouch')
  end

  it 'only allows defined methods to be invoked - using 2 methods' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end

  it 'only allows defined method to be invoked - using a new syntax and checking nil' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive(:fall_off_ladder)
    my_array = []

    expect(stuntman.fall_off_ladder).to be_nil
  end

  it 'only allows defined method to be invoked - using a new syntax and returning a string' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')

    expect(stuntman.fall_off_ladder).to eq('Ouch')
  end

  it 'only allows defined methods to be invoked - using receive_messages' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be true
  end
end

RSpec.describe 'Database connection - version 1' do
  it 'should connect to the database' do
    db = double('Database Connection', connect: true, disconnect: false)

    expect(db.connect).to be true
    expect(db.disconnect).to be false
  end
end

RSpec.describe 'Database connection - version 2' do
  it 'should connect to the database' do
    db = double('Database Connection', connect: true, disconnect: false)

    expect(db.connect).to be true
  end

  it 'should disconnect from the database' do
    db = double('Database Connection', connect: true, disconnect: false)

    expect(db.disconnect).to be false
  end
end

RSpec.describe 'File System' do
  it 'should read the file' do
    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Juliet')

    expect(fs.read).to eq('Romeo and Juliet')
  end

  it 'should write to the file' do
    fs = double('File System')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.write).to be false
  end
end
