# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end

class Photo
  @@all = []
  attr_accessor :comments, :user

  def initialize
    @comments = []
  end

  def make_comment(comment)
    new_comment = Comment.new(comment)
    @comments << new_comment
  end

  def self.all?
    @@all
  end
end

class Comment
  @@all = []
  def initialize(comment)
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end
end

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
