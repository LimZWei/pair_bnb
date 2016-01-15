require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { address2: @listing.address2, address: @listing.address, aircond: @listing.aircond, anytime: @listing.anytime, available_mode: @listing.available_mode, bedtype: @listing.bedtype, booking_mode: @listing.booking_mode, breakfast: @listing.breakfast, cabletv: @listing.cabletv, carbonmonoxide_detector: @listing.carbonmonoxide_detector, city: @listing.city, country: @listing.country, current: @listing.current, doorman: @listing.doorman, dryer: @listing.dryer, elevator: @listing.elevator, emergency_exit: @listing.emergency_exit, emergency_phone: @listing.emergency_phone, essentials: @listing.essentials, events: @listing.events, extinguisher: @listing.extinguisher, extinguisher_location: @listing.extinguisher_location, familyfriendly: @listing.familyfriendly, fire_alarm_location: @listing.fire_alarm_location, fireplace: @listing.fireplace, firstaid: @listing.firstaid, freeparking: @listing.freeparking, gas_shut_off_location: @listing.gas_shut_off_location, guest_access: @listing.guest_access, gym: @listing.gym, hairdryer: @listing.hairdryer, hangers: @listing.hangers, heating: @listing.heating, hometype: @listing.hometype, hottub: @listing.hottub, houserules: @listing.houserules, interactions: @listing.interactions, intercom: @listing.intercom, internet: @listing.internet, iron: @listing.iron, kitchen: @listing.kitchen, laptopfriendly: @listing.laptopfriendly, listing_name: @listing.listing_name, neighbour_getting_around: @listing.neighbour_getting_around, neighbour_overview: @listing.neighbour_overview, number: @listing.number, number_of_beds: @listing.number_of_beds, other_things: @listing.other_things, petsin: @listing.petsin, pool: @listing.pool, price: @listing.price, roomtype: @listing.roomtype, safetycard: @listing.safetycard, shampoo: @listing.shampoo, smokedetector: @listing.smokedetector, smoking: @listing.smoking, state: @listing.state, summary: @listing.summary, the_space: @listing.the_space, tv: @listing.tv, user_id: @listing.user_id, washer: @listing.washer, wheelchair: @listing.wheelchair, wireless: @listing.wireless, zipcode: @listing.zipcode }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { address2: @listing.address2, address: @listing.address, aircond: @listing.aircond, anytime: @listing.anytime, available_mode: @listing.available_mode, bedtype: @listing.bedtype, booking_mode: @listing.booking_mode, breakfast: @listing.breakfast, cabletv: @listing.cabletv, carbonmonoxide_detector: @listing.carbonmonoxide_detector, city: @listing.city, country: @listing.country, current: @listing.current, doorman: @listing.doorman, dryer: @listing.dryer, elevator: @listing.elevator, emergency_exit: @listing.emergency_exit, emergency_phone: @listing.emergency_phone, essentials: @listing.essentials, events: @listing.events, extinguisher: @listing.extinguisher, extinguisher_location: @listing.extinguisher_location, familyfriendly: @listing.familyfriendly, fire_alarm_location: @listing.fire_alarm_location, fireplace: @listing.fireplace, firstaid: @listing.firstaid, freeparking: @listing.freeparking, gas_shut_off_location: @listing.gas_shut_off_location, guest_access: @listing.guest_access, gym: @listing.gym, hairdryer: @listing.hairdryer, hangers: @listing.hangers, heating: @listing.heating, hometype: @listing.hometype, hottub: @listing.hottub, houserules: @listing.houserules, interactions: @listing.interactions, intercom: @listing.intercom, internet: @listing.internet, iron: @listing.iron, kitchen: @listing.kitchen, laptopfriendly: @listing.laptopfriendly, listing_name: @listing.listing_name, neighbour_getting_around: @listing.neighbour_getting_around, neighbour_overview: @listing.neighbour_overview, number: @listing.number, number_of_beds: @listing.number_of_beds, other_things: @listing.other_things, petsin: @listing.petsin, pool: @listing.pool, price: @listing.price, roomtype: @listing.roomtype, safetycard: @listing.safetycard, shampoo: @listing.shampoo, smokedetector: @listing.smokedetector, smoking: @listing.smoking, state: @listing.state, summary: @listing.summary, the_space: @listing.the_space, tv: @listing.tv, user_id: @listing.user_id, washer: @listing.washer, wheelchair: @listing.wheelchair, wireless: @listing.wireless, zipcode: @listing.zipcode }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
