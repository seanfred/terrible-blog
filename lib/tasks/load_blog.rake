namespace :load_blog do
  desc "loads a lot of shit into the blog"
  task :load_shit => :environment do
    1.times do
      p = Post.create(
        title: Faker::Company.catch_phrase,
        body: Faker::Lorem.paragraphs.join("\n")
      )
      1.times do
        c = p.comments.build( body: Faker::Lorem.paragraphs.join("\n"))
        r = c.replies.build(  body: Faker::Lorem.paragraphs.join("\n"))
        p.save!
      end
    end
  end
end
