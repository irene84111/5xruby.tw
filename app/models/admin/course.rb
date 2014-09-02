# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  image           :string(255)
#  title           :string(255)      not null
#  summary         :text
#  description     :text
#  what_will_learn :text
#  created_at      :datetime
#  updated_at      :datetime
#  subtitle        :string(255)
#  category_id     :integer
#  is_online       :boolean          default(FALSE), not null
#  permalink       :string(255)      not null
#  note            :text
#  apply_link      :string(255)
#  iframe_html     :string(255)
#

class Admin::Course < Course
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  has_many :schedules, through: :stages
  has_many :applies
  belongs_to :category

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
