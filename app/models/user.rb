class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation, :company, :size
  has_many :employees, :dependent => :destroy



  validates :name,  :presence => true,
                      :length   => { :minimum => 5 }
  validates :company,  :presence => true                 
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :format     => { :with => email_regex },
                    :presence => true,
                    :uniqueness => { :case_sensitive => false }
                    

  validates_presence_of :size, :on => :create, :message => "can't be blank"
                    
  # Automatically create the virtual attribute 'password_confirmation'.
  validates :password, :presence     => true,
                      :confirmation => true,
                       :length       => { :within => 6..40 }
  
  before_save :encrypt_password
  def has_password?(submitted_password)
      encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
      user = find_by_email(email)
      return nil  if user.nil?
      return user if user.has_password?(submitted_password)
    end
  def self.authenticate_with_salt(id, cookie_salt)
        user = find_by_id(id)
        (user && user.salt == cookie_salt) ? user : nil
  end
    

  private

      def encrypt_password
        self.salt = make_salt if new_record?
        self.encrypted_password = encrypt(password)
      end

      def encrypt(string)
        secure_hash("#{salt}--#{string}")
      end

      def make_salt
        secure_hash("#{Time.now.utc}--#{password}")
      end

      def secure_hash(string)
        Digest::SHA2.hexdigest(string)
      end
end
