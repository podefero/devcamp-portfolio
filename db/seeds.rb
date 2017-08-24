3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My pet turtle #{blog}",
    body: "I had a turtle once.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created "

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title" ,
    subtitle:"Ruby on Rails" ,
    body: "The body of a bird is like unto a baby seal,
    they both are somthing that I dont think about too much",
    main_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=600%C3%97400&w=600&h=400",
    thumb_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=350&h=200",
    )
end
puts "8 portfolios items created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title" ,
    subtitle:"Angular #{portfolio_item}" ,
    body: "The body of a bird is like unto a baby seal,
    they both are somthing that I dont think about too much",
    main_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=600%C3%97400&w=600&h=400",
    thumb_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=350&h=200",
    )
end
puts "one portfolio_item created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name:"Technology #{technology}")
  end
  puts "3 technologies created"