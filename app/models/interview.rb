class Interview < ActiveRecord::Base
  has_many :attachments
  validates_length_of :phoneNumber, :maximum=>10
  validates_format_of :email,:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  validates_presence_of :name
  accepts_nested_attributes_for :attachments
  validates_presence_of :name ,:phoneNumber  ,:total_exp ,:ror_exp ,:doi ,:type_location ,:result,:email
  #validates_uniqueness_of :phoneNumber
  validates_numericality_of :phoneNumber,:total_exp
  #validates_length_of :remarks, :minimum => 100, :too_short => "Your remarks must be at least 30 words."
def self.pagination(search, page)
  paginate :per_page => 12, :page => page,:order => 'name'
end

  
end
