get '/' do
  # Look in app/views/index.erb
  @section_names = [] 
  Section.all.each  { |record| @section_names << record.name }
  erb :index

end

post '/post_new/secret/:secret_url' do

 category = params[:category]
 section_id = Section.where(name: category).first.id
 title = params[:title]
 desc = params[:description]
 secret = params[:secret_url]

Post.create!(section_id: section_id, title:title, desc:desc, secret:secret)

erb :secret
end

get '/post_new/:input' do
@category = params[:input]
erb :post_new
end

get '/:category' do
@category = params[:category]
id = Section.where(name: @category) 
@rel_posts = []
#put filter here
Section.find(id).posts.each {|entry| @rel_posts << [entry.title,entry.desc]} 
  erb :posts
end




