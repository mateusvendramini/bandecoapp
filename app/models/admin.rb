class Admin < ApplicationRecord
	validates :login,  :senha, :nome, :presence => true
	validates :senha, confirmation: true
	validates :login, :uniqueness =>true
end
