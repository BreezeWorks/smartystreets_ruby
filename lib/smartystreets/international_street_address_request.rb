# -*- encoding: utf-8 -*-

require 'smartystreets/base_json_object'

module SmartyStreets

  # Represents a request for an international street address.
  #
  # @author Peter Edge (peter.edge@gmail.com)
  class InternationalStreetAddressRequest < BaseJsonObject

    attr_reader :input_id
    attr_reader :country
    attr_reader :geocode
    attr_reader :language
    attr_reader :freeform
    attr_reader :address1
    attr_reader :address2
    attr_reader :address3
    attr_reader :address4
    attr_reader :organization
    attr_reader :locality
    attr_reader :administrative_area
    attr_reader :postal_code

    def initialize(hash)
      super(hash)
      @input_id = get_optional_string(hash, :input_id)
      @country = get_required_string(hash, :country)
      @geocode = get_optional_boolean(hash, :geocode)
      @language = get_optional_string(hash, :language)
      @freeform = get_optional_string(hash, :freeform)
      @address1 = get_optional_string(hash, :address1)
      @address2 = get_optional_string(hash, :address2)
      @address3 = get_optional_string(hash, :address3)
      @address4 = get_optional_string(hash, :address4)
      @organization = get_optional_string(hash, :organization)
      @locality = get_optional_string(hash, :locality)
      @administrative_area = get_optional_string(hash, :administrative_area)
      @postal_code = get_optional_string(hash, :postal_code)
    end

    def to_json(*a)
      hash = Hash.new
      hash[:input_id] = input_id if input_id
      hash[:country] = country if country
      hash[:geocode] = geocode if geocode
      hash[:language] = language if language
      hash[:freeform] = freeform if freeform
      hash[:address1] = address1 if address1
      hash[:address2] = address2 if address2
      hash[:address3] = address3 if address3
      hash[:address4] = address4 if address4
      hash[:organization] = organization if organization
      hash[:locality] = locality if locality
      hash[:administrative_area] = administrative_area if administrative_area
      hash[:postal_code] = postal_code if postal_code
    end
  end
end
