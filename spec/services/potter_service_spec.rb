require 'rails_helper'

describe PotterService do
  context 'instance methods' do
    context '#members_by_house' do
      it 'returns member data' do
        search = subject.members_by_house('Gryffindor')

        expect(search).to be_instance_of Array
        expect(search.count).to eq(21)

        member_data = search.first

        expect(member_data).to have_key(:name)
        expect(member_data).to have_key(:house)
      end
    end
  end
end
