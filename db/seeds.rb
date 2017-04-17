10.times do |blog|
  Blog.create!(
    title: "My pet turtle #{blog}",
    body: "I had a turtle once."
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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}" ,
    subtitle:"My great service #{portfolio_item}" ,
    body: "The body of a bird is like unto a baby seal,
    they both are somthing that I dont think about too much",
    main_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=600%C3%97400&w=600&h=400",
    thumb_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=350&h=200",
    )
end
puts "9 portfolios items created"