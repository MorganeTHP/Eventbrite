class Attendance < ApplicationRecord
  after_create :attenance_send
  belongs_to :organiser, class_name: "User"
  belongs_to :participant, class_name: "User"
  validates :stripe_customer_id, presence: true, uniqueness: true

  def attenance_send
    AttendanceMailer.attenance_email(self).deliver_now
  end
end
