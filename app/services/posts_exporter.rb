class PostsExporter
  def initialize
    @posts = Post.all.eager_load(:user)
  end  

	def export_into_csv
		start_time = Time.current
		File.open("./tmp/posts_#{Time.current}.csv", 'w')  do |f|
			f.puts 'title,body,user_email'
			@posts.each do |post|
				f.puts [post.title, post.body, post.user.email].join(',')
			end
			f.puts "Time: #{Time.current - start_time}"
			f.close
		end
  end
end
