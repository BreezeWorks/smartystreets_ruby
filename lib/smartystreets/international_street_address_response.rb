# -*- encoding: utf-8 -*-

require 'smartystreets/base_json_object'

module SmartyStreets

  # Represents a response for an international street address.
  #
  # @author Peter Edge (peter.edge@gmail.com)
  class InternationalStreetAddressResponse < BaseJsonObject

    attr_reader :input_id
    attr_reader :organization
    attr_reader :address1
    attr_reader :address2
    attr_reader :address3
    attr_reader :address4
    attr_reader :address5
    attr_reader :address6
    attr_reader :address7
    attr_reader :address8
    attr_reader :address9
    attr_reader :address10
    attr_reader :address11
    attr_reader :address12
    attr_reader :components
    attr_reader :metadata
    attr_reader :analysis

    def initialize(hash)
      super(hash)
      @input_id = get_optional_string(hash, :input_id)
      @organization = get_optional_string(hash, :organization)
      @address1 = get_optional_string(hash, :address1)
      @address2 = get_optional_string(hash, :address2)
      @address3 = get_optional_string(hash, :address3)
      @address4 = get_optional_string(hash, :address4)
      @address5 = get_optional_string(hash, :address5)
      @address6 = get_optional_string(hash, :address6)
      @address7 = get_optional_string(hash, :address7)
      @address8 = get_optional_string(hash, :address8)
      @address9 = get_optional_string(hash, :address9)
      @address10 = get_optional_string(hash, :address10)
      @address11 = get_optional_string(hash, :address11)
      @address12 = get_optional_string(hash, :address12)

      components = get_optional_hash(hash, :components)
      metadata = get_optional_hash(hash, :metadata)
      analysis = get_optional_hash(hash, :analysis)
      @components = Components.new(components) if components
      @metadata = Metadata.new(metadata) if metadata
      @analysis = Analysis.new(analysis) if analysis
    end

    class Components < BaseJsonObject

      attr_reader :country_iso_3
      attr_reader :super_administrative_area
      attr_reader :administrative_area
      attr_reader :sub_administrative_area
      attr_reader :dependent_locality
      attr_reader :dependent_locality_name
      attr_reader :double_dependent_locality
      attr_reader :locality
      attr_reader :postal_code
      attr_reader :postal_code_short
      attr_reader :postal_code_extra
      attr_reader :premise
      attr_reader :premise_extra
      attr_reader :premise_number
      attr_reader :premise_type
      attr_reader :thoroughfare
      attr_reader :thoroughfare_predirection
      attr_reader :thoroughfare_postdirection
      attr_reader :thoroughfare_name
      attr_reader :thoroughfare_trailing_type
      attr_reader :thoroughfare_type
      attr_reader :dependent_thoroughfare
      attr_reader :dependent_thoroughfare_predirection
      attr_reader :dependent_thoroughfare_postdirection
      attr_reader :dependent_thoroughfare_name
      attr_reader :dependent_thoroughfare_trailing_type
      attr_reader :dependent_thoroughfare_type
      attr_reader :building
      attr_reader :building_leading_type
      attr_reader :building_name
      attr_reader :building_trailing_type
      attr_reader :sub_building_type
      attr_reader :sub_building_number
      attr_reader :sub_building_name
      attr_reader :sub_building
      attr_reader :post_box
      attr_reader :post_box_type
      attr_reader :post_box_number

      def initialize(hash)
        super(hash)
        @country_iso_3 = get_optional_string(hash, :country_iso_3)
        @super_administrative_area = get_optional_string(hash, :super_administrative_area)
        @administrative_area = get_optional_string(hash, :administrative_area)
        @sub_administrative_area = get_optional_string(hash, :sub_administrative_area)
        @dependent_locality = get_optional_string(hash, :dependent_locality)
        @dependent_locality_name = get_optional_string(hash, :dependent_locality_name)
        @double_dependent_locality = get_optional_string(hash, :double_dependent_locality)
        @locality = get_optional_string(hash, :locality)
        @postal_code = get_optional_string(hash, :postal_code)
        @postal_code_short = get_optional_string(hash, :postal_code_short)
        @postal_code_extra = get_optional_string(hash, :postal_code_extra)
        @premise = get_optional_string(hash, :premise)
        @premise_extra = get_optional_string(hash, :premise_extra)
        @premise_number = get_optional_string(hash, :premise_number)
        @premise_type = get_optional_string(hash, :premise_type)
        @thoroughfare = get_optional_string(hash, :thoroughfare)
        @thoroughfare_predirection = get_optional_string(hash, :thoroughfare_predirection)
        @thoroughfare_postdirection = get_optional_string(hash, :thoroughfare_postdirection)
        @thoroughfare_name = get_optional_string(hash, :thoroughfare_name)
        @thoroughfare_trailing_type = get_optional_string(hash, :thoroughfare_trailing_type)
        @thoroughfare_type = get_optional_string(hash, :thoroughfare_type)
        @dependent_thoroughfare = get_optional_string(hash, :dependent_thoroughfare)
        @dependent_thoroughfare_predirection = get_optional_string(hash, :dependent_thoroughfare_predirection)
        @dependent_thoroughfare_postdirection = get_optional_string(hash, :dependent_thoroughfare_postdirection)
        @dependent_thoroughfare_name = get_optional_string(hash, :dependent_thoroughfare_name)
        @dependent_thoroughfare_trailing_type = get_optional_string(hash, :dependent_thoroughfare_trailing_type)
        @dependent_thoroughfare_type = get_optional_string(hash, :dependent_thoroughfare_type)
        @building = get_optional_string(hash, :building)
        @building_leading_type = get_optional_string(hash, :building_leading_type)
        @building_name = get_optional_string(hash, :building_name)
        @building_trailing_type = get_optional_string(hash, :building_trailing_type)
        @sub_building_type = get_optional_string(hash, :sub_building_type)
        @sub_building_number = get_optional_string(hash, :sub_building_number)
        @sub_building_name = get_optional_string(hash, :sub_building_name)
        @sub_building = get_optional_string(hash, :sub_building)
        @post_box = get_optional_string(hash, :post_box)
        @post_box_type = get_optional_string(hash, :post_box_type)
        @post_box_number = get_optional_string(hash, :post_box_number)
      end
    end

    class Metadata < BaseJsonObject

      attr_reader :latitude
      attr_reader :longitude
      attr_reader :geocode_precision
      attr_reader :max_geocode_precision

      def initialize(hash)
        super(hash)
        @latitude = get_optional_number(hash, :latitude)
        @longitude = get_optional_number(hash, :longitude)
        @geocode_precision = get_optional_string(hash, :geocode_precision)
        @max_geocode_precision = get_optional_string(hash, :max_geocode_precision)
      end
    end

    class Analysis < BaseJsonObject

      attr_reader :verification_status
      attr_reader :address_precision
      attr_reader :max_address_precision

      def initialize(hash)
        super(hash)
        @verification_status = get_optional_string(hash, :verification_status)
        @address_precision = get_optional_string(hash, :address_precision)
        @max_address_precision = get_optional_string(hash, :max_address_precision)
      end
    end
  end
end
