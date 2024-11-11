require 'geocoder/results/base'

module Geocoder::Result
  class Azure < Base
    def address
      @data['address']['freeformAddress']
    end

    def building_number
      @data['address']['buildingNumber']
    end

    def city
      @data['address']['municipality']
    end

    def coordinates
      @data['position'] || {}
    end

    def country
      @data['address']['country']
    end

    def country_code
      @data['address']['countryCode']
    end

    def district
      @data['address']['municipalitySubdivision']
    end

    def postal_code
      @data['address']['postalCode']
    end

    def province
      @data['address']['countrySubdivision']
    end

    def state
      @data['address']['countrySubdivision']
    end

    def state_code
      @data['address']['countrySubdivisionCode']
    end

    def street_name
      @data['address']['streetName']
    end

    def street_number
      @data['address']['streetNumber']
    end

    def viewport
      @data['viewport'] || {}
    end
  end
end