class AnotherExampleAuthorizer < ApplicationAuthorizer

  def self.creatable_by?(user)
    user.has_role? :punk
  end

end
