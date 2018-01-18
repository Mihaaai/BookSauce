# This file should contain all the record creation needed to 
#seed the database with its default values.
# The data can then be loaded with the rails db:seed command 
#(or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([\
	{email: "ghidome@gmail.com", password: "testare", password_confirmation: "testare", role: "admin"},\
	{email: "admin@admin.com", password: "testare", password_confirmation: "testare"},
	{email: "member@member.com", password: "testare", password_confirmation: "testare"}	
	])

categories = Category.create([{title: "Sales"}, {title: "Personal Development"}, 
	{title: "Biographies"}, {title: "Business"},
	{title: "Management"}, {title: "Productivity"}])

authors = Author.create([{name: "Malcolm Gladwell"}, {name: "Ryan Holiday"},
	{name: "David Allen"}])

books = Book.create([\
	{title: "Blink", category_id: categories[1].id,author_id: authors[0].id},
	{title: "Outliers", category_id: categories[1].id, author_id: authors[0].id},
	{title: "Ego is the enemy", category_id: categories[1].id, author_id: authors[1].id},
	{title: "Getting things done", category_id: categories[5].id, author_id: authors[0].id}\
	])

comments = Comment.create([\
	{message: "A very good book for an overthinker!", user_id: users[0].id, book_id: books[0].id},
	{message: "I think Malcolm overdid himself this time. Still, it would have been nice if the book was longer.",\
		rating: "four", user_id: users[1].id, book_id: books[0].id},
	{message: "Reading a book about productivity will not make me any more productive.
		In my opinion, productivity appears when you do stuff. Not when you read about them.",\
		user_id: users[1].id, book_id: books[3].id}\
	])




