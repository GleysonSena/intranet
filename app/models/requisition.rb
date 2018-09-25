class Requisition < ApplicationRecord
  belongs_to :requester, class_name: :User
  belongs_to :requisition_status
  belongs_to :requisition_category

  enum flag: [ :open, :closed, :inprogress, :canceled ]

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.open_or_closed(filter)
    if filter=="closed"
      where(requisition_status_id: 7)
    else
      where.not(requisition_status_id: 7)
   end
  end

  
end
