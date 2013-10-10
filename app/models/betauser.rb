# -*- encoding : utf-8 -*-
class Betauser < ActiveRecord::Base
  attr_accessible :email, :howmuch, :name


  validates :name, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, :uniqueness => { :message => 'Email já registrado.' }
  validates :howmuch, :presence => true
end
