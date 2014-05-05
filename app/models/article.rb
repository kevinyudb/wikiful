class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
	validates :title, presnece: true
	validates :content, presnece: true
	validates :categories, presnece: true
end
