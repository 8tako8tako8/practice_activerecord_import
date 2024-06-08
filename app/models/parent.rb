class Parent < ApplicationRecord
  has_many :children, dependent: :destroy

  before_save :log_before_save
  after_save :log_after_save

  def log_before_save
    Rails.logger.info "Before Saving Parent: #{name}"
  end

  def log_after_save
    Rails.logger.info "After Save Parent: #{name}"
  end
end
