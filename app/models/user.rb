# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :username, 
            presence: true,
            format: {with: /\A[a-zA-Z0-9]+\Z/, 
              message: "wrong username format" },
            length: { minimum: 3, maximum: 40 }
  validates :email, 
            presence: true, 
            uniqueness: { case_sensitive: false, 
              message: "that email address is already in use" }, 
            format: { with: /.+@.+\..+/i, 
              message: "wrong email format" },
            length: { minimum: 8, maximum: 40 }
    
end
