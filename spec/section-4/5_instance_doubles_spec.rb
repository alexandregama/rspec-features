class Transaction
  def commit
    sleep(3)
    'commit transaction'
  end

  def rollback(seconds)
    sleep(seconds)
    'rollback transaction'
  end
end

RSpec.describe Transaction do
  describe 'regular double' do
    it 'can implement any method - using existing methods' do
      transaction = double(commit: 'commit the database transaction', rollback: 'rollback transaction')

      expect(transaction.commit).to eq('commit the database transaction')
    end

    it 'can implement any method - using a non existing method' do
      transaction = double(commit: 'my custom message', rollback: 'rollback transaction', begin: 'it does not exist but it works')

      expect(transaction.commit).to eq('my custom message')
      expect(transaction.begin).to eq('it does not exist but it works')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      transaction = instance_double(Transaction, commit: 'my custom message')

      expect(transaction.commit).to eq('my custom message')
    end

    it 'can only implement methods that are defined on the class' do
      transaction = instance_double(Transaction)

      allow(transaction).to receive(:commit).and_return('my custom message')
      allow(transaction).to receive(:rollback).with(3).and_return('my other custom message')

      expect(transaction.commit).to eq('my custom message')
      expect(transaction.rollback(3)).to eq('my other custom message')
    end
  end
end

