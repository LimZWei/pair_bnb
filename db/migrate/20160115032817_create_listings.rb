class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :address
      t.string :hometype
      t.string :roomtype
      t.string :number_of_beds
      t.string :bedtype
      t.string :listing_name
      t.text :summary
      t.string :country
      t.string :city
      t.string :address2
      t.string :state
      t.string :zipcode
      t.boolean :essentials
      t.boolean :tv
      t.boolean :cabletv
      t.boolean :aircond
      t.boolean :heating
      t.boolean :kitchen
      t.boolean :internet
      t.boolean :wireless
      t.boolean :anytime
      t.boolean :hottub
      t.boolean :washer
      t.boolean :pool
      t.boolean :dryer
      t.boolean :breakfast
      t.boolean :freeparking
      t.boolean :gym
      t.boolean :elevator
      t.boolean :fireplace
      t.boolean :intercom
      t.boolean :doorman
      t.boolean :shampoo
      t.boolean :hangers
      t.boolean :hairdryer
      t.boolean :iron
      t.boolean :laptopfriendly
      t.boolean :familyfriendly
      t.boolean :smoking
      t.boolean :events
      t.boolean :petsin
      t.boolean :wheelchair
      t.boolean :smokedetector
      t.boolean :carbonmonoxide_detector
      t.boolean :firstaid
      t.boolean :safetycard
      t.boolean :extinguisher
      t.string :extinguisher_location
      t.string :fire_alarm_location
      t.string :gas_shut_off_location
      t.text :emergency_exit
      t.string :emergency_phone
      t.string :the_space
      t.string :guest_access
      t.string :interactions
      t.string :other_things
      t.string :houserules
      t.string :neighbour_overview
      t.string :neighbour_getting_around
      t.string :current
      t.boolean :booking_mode
      t.boolean :available_mode
      t.string :number
      t.integer :price

      t.timestamps null: false
    end
  end
end
