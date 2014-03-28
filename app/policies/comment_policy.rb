class CommentPolicy < ApplicationPolicy
	def index?
		true
	end

	def create?
		user.present?
	end

	def update?
		create?
	end

	def destroy
		user.present? && (record.user == user || user.role?(:admin) || user.role?(:moderator))
	end
end