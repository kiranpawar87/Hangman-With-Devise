class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :fname,:lname, presence: true
  validates_format_of :fname, :with=>/\A[A-Za-z]*\Z/
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates :email,:uniqueness=> true, :presence => true
  validates_length_of :password, :minimum => 6
end
