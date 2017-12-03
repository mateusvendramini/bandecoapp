class Restaurante < ApplicationRecord
	validates :nome, presence: true
	validates :nome, uniqueness: true


	validates :layout, presence: true
	
	
	validates :mapa, presence: true
	validates :mapa, uniqueness: true
	
	validates :foto, presence: true
	validates :foto, uniqueness: true
end
