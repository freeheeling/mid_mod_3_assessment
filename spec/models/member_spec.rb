require 'rails_helper'

describe Member do
  it 'exists' do
    attrs = {
      name: 'Harry Potter',
      role: 'student',
      house: 'Gryffindor',
      patronus: 'stag'
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq('Harry Potter')
    expect(member.role).to eq('student')
    expect(member.house).to eq('Gryffindor')
    expect(member.patronus).to eq('stag')
  end
end
