class Member
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(attrs)
    @name = attrs[:name] || 'undefned'
    @role = attrs[:role] || 'undefned'
    @house = attrs[:house] || 'undefned'
    @patronus = attrs[:patronus] || 'undefned'
  end
end
