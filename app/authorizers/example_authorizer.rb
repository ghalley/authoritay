class ExampleAuthorizer < ApplicationAuthorizer

  def self.creatable_by?(user)
    user.has_role? :admin
  end

  def deletable_by?(user)
    resource.id != 1
  end

  def updatable_by?(user)
    resource.id != 1
  end

end
