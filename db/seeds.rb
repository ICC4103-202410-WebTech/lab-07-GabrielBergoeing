# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.destroy_all
User.destroy_all
Tag.destroy_all

User.create(
    name:'RedMageAarn', 
    email:'humitasaarn@gmail.com', 
    password:'A54gs546WAynd'
    )
User.create(
    name:'TheHatPerson', 
    email:'dhatperson2@gmail.com', 
    password:'BU83DjdiqpSsi01'
    )
User.create(
    name:'John Doe', 
    email:'example@gmail.com', 
    password:'1203495k'
    )
User.create(
    name:'TheMemeGuy64', 
    email:'meme6446@gmail.com', 
    password:'dogedogedogeegod_64'
    )
User.create(
    name:'Andrés Pérez', 
    email:'aperez@gmail.com', 
    password:'S9bf30D'
    )

p1 = Post.create(
    title:'Currently commiting CAT CRIMES :3', 
    content:'cat_crime.png', 
    user_id: 2, 
    published_at: '05/01/17 15:32', 
    answers_count: 0, 
    likes_count: 0
    )
p2 = Post.create(
    title:'Did you know? In Skullgirls 2° Encore, you can make a longer, consistent back dash with Black Dahlia by presicely timing jLK, extending the air time in the last few frames.', 
    content:'back_dash_tech.jpg', 
    user_id: 1, 
    published_at: '14/04/17 07:00', 
    answers_count: 2, 
    likes_count: 7
    )
p3 = Post.create(
    title:'very funny meme', 
    content:'cool_meme.jpeg', 
    user_id: 4, 
    published_at: '21/04/19 19:00', 
    answers_count: 3, 
    likes_count: 69
    )
p4 = Post.create(
    title:'A nice view of the beach :happyface:', 
    content:'whatsapp_web_0472046.tiff', 
    user_id: 3, 
    published_at: '09/05/19 10:41', 
    answers_count: 5, 
    likes_count: 23
    )
p5 = Post.create(
    title: 'Post 1', 
    content:'text', 
    user_id: 5, 
    published_at: '11/06/19 14:52', 
    answers_count: 34, 
    likes_count: 15
    )
p6 = Post.create(
    title: 'CUALQUIER COSA QUE HAGAN, NO BUSQUE COMO SE PROCESAN LAS BACHICHAS', 
    content: 'text', 
    user_id: 5, 
    published_at: '11/08/19 06:36', 
    answers_count: 81, 
    likes_count: 102
    )
p7 = Post.create(
    title: 'WAIT WHAT DO YOU MEAN THERE IS A NEW AHIT DLC', 
    content:'haki_explosion.gif', 
    user_id: 2, 
    published_at: '22/11/19 20:17', 
    answers_count: 24, 
    likes_count: 13
    )
p8 = Post.create(
    title: 'Remember to take your vaccine folks!', 
    content:'text', 
    user_id: 3, 
    published_at: '14/02/21 12:30', 
    answers_count: 44, 
    likes_count: 60
    )
p9 = Post.create(
    title:'Hola Yweets, de que me perdí?', 
    content:'text', 
    user_id: 1, 
    published_at: '08/07/21 08:21', 
    answers_count: 105, 
    likes_count: 32
    )
p10 = Post.create(
    title: 'Fine then, if Youtube wont make their rewind, we will', 
    content:'text', 
    user_id: 4, 
    published_at: '12/12/21 12:12', 
    answers_count: 45, 
    likes_count: 56
    )

t1 = Tag.create(
    name: 'Memes'
)
t2 = Tag.create(
    name: 'AHiT'
)
t3 = Tag.create(
    name: 'StaySafe'
)
t4 = Tag.create(
    name: 'CosasRandom'
)
t5 = Tag.create(
    name: 'Tag 1'
)

PostsTag.create(post: p1, tag: t1)
PostsTag.create(post: p1, tag: t2)

PostsTag.create(post: p2, tag: t4)
PostsTag.create(post: p2, tag: t5)

PostsTag.create(post: p3, tag: t1)
PostsTag.create(post: p3, tag: t5)

PostsTag.create(post: p4, tag: t4)
PostsTag.create(post: p5, tag: t5)

PostsTag.create(post: p6, tag: t4)
PostsTag.create(post: p7, tag: t2)

PostsTag.create(post: p8, tag: t3)
PostsTag.create(post: p9, tag: t5)

PostsTag.create(post: p10, tag: t5)
