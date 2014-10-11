class Project < ActiveRecord::Base

	validates :name, :budget, presence: true
	
end
