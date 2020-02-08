class SeedsPostAndLikesForDevelopment

  def initialize
    @members = Member.all
  end

  def create_posts_for_members
    @members.each do |m|
      (50..100).to_a.sample.times do
        create_posts(m.id)
      end
    end
  end
  
  private

  def create_posts(member_id)
    @member_id = member_id

    post = Post.seed do |p|
      p.member_id = @member_id
      p.content   = create_random_sentence
    end.shift

    Post.seed do |p|
      p.member_id = @members.ids.sample
      p.content   = create_random_sentence
      p.post_id   = post.id
    end

    Like.seed :post_id do |l|
      l.post_id   = post.id
      l.member_id = @members.ids.sample
    end
  end

  def create_random_sentence
    wc = (12..30).to_a.sample
    Faker::Lorem.sentence(word_count: wc)
  end

end

SeedsPostAndLikesForDevelopment.new.create_posts_for_members
