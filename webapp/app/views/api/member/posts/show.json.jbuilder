json.hits do
  json.array! @posts do |p|
    # json.post p, :id, :content, :created_at
    json.post p, :content
    json.user p.member, :name, :slug
  end
end
