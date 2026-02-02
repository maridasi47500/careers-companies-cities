require "application_system_test_case"

class FormationsTest < ApplicationSystemTestCase
  setup do
    @formation = formations(:one)
  end

  test "visiting the index" do
    visit formations_url
    assert_selector "h1", text: "Formations"
  end

  test "should create formation" do
    visit formations_url
    click_on "New formation"

    fill_in "Debut", with: @formation.debut
    fill_in "Diplome", with: @formation.diplome
    fill_in "Ecole", with: @formation.ecole
    fill_in "Fin", with: @formation.fin
    fill_in "Lieu", with: @formation.lieu
    fill_in "User", with: @formation.user_id
    click_on "Create Formation"

    assert_text "Formation was successfully created"
    click_on "Back"
  end

  test "should update Formation" do
    visit formation_url(@formation)
    click_on "Edit this formation", match: :first

    fill_in "Debut", with: @formation.debut
    fill_in "Diplome", with: @formation.diplome
    fill_in "Ecole", with: @formation.ecole
    fill_in "Fin", with: @formation.fin
    fill_in "Lieu", with: @formation.lieu
    fill_in "User", with: @formation.user_id
    click_on "Update Formation"

    assert_text "Formation was successfully updated"
    click_on "Back"
  end

  test "should destroy Formation" do
    visit formation_url(@formation)
    click_on "Destroy this formation", match: :first

    assert_text "Formation was successfully destroyed"
  end
end
