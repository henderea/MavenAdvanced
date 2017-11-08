#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'json'
require 'openssl'

helpers do
  def unique_id
    OpenSSL::Digest::MD5.hexdigest("#{rand}#{DateTime::now.strftime('%Q')}")
  end

  def random_string(length)
    rand(36**length).to_s(36)
  end

  def md5(str)
    OpenSSL::Digest::MD5.hexdigest(str)
  end
end

