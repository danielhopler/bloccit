require 'random_data'

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end


unique_post = Post.find_or_create_by!(title: "Unique title", body: "Unique body")
puts "#{Post.count}"
Comment.find_or_create_by!(post: unique_post, body: "Unique Comment")
puts "#{Comment.count}"
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
