
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/board.db")


class Post
    include DataMapper::Resource
    property :id, Serial  
    property :title, String
    property :content, Text
    property :created_at, DateTime
end

class Blog
    include DataMapper::Resource
    property :id, Serial  
    property :title, String
    property :content, Text
    property :tag, String
    property :image_url, Text
    property :created_at, DateTime
end


DataMapper.finalize

Post.auto_upgrade!
Blog.auto_upgrade!