class User < ApplicationRecord
  before_save :log_before_save
  after_save :log_after_save

  def log_before_save
    Rails.logger.info "Before Saving User: #{name}"
  end

  def log_after_save
    Rails.logger.info "After Save User: #{name}"
  end
end
