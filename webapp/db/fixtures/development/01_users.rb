class SeedsUsersForDevelopment
  include SeedsConstants

  def initialize
    @user_idx   = 1
    @member_idx = 1
    @created_at = Time.zone.parse('2020-01-25 18:00:00')
  end

  def create_members
    DEMO_MEMBER_COUNT.times do
      create_member
    end
  end

  private

  def create_user(role)
    user = User.seed do |u|
      u.id = @user_idx
      u.email = role.class.name.downcase + role.id.to_s + '@our.example.com'
      u.password = 'password'
      u.role_type = role.class.name
      u.role_id   = role.id
      u.confirmed_at = @created_at
    end

    @user_idx += 1
    return user
  end

  def create_member
    member = Member.seed do |m|
      m.id         = @member_idx
      m.name       = Faker::Name.name
      m.slug       = Faker::Internet.username(specifier: 6..12)
      m.is_hidden  = 0
      m.intro      = Faker::Lorem.sentence(word_count: 18)
      m.birthday   = Faker::Date.birthday(min_age: 18, max_age: 35)
      m.created_at = @created_at
      m.updated_at = @created_at
    end.shift

    user = create_user(member)

    @member_idx += 1
    @created_at += 1.hour
  end

end

SeedsUsersForDevelopment.new.create_members
