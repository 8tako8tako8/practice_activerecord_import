class Child < ApplicationRecord
  belongs_to :parent

  before_save :log_before_save
  after_save :log_after_save

  def log_before_save
    Rails.logger.info "Before Save Child: #{name}"
  end

  def log_after_save
    Rails.logger.info "After Save Child: #{name}"
  end
end
