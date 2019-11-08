Feature: Interact with Categories
  As a blog administrator
  In order to better sort my content
  I want to be able to add and modify blog categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

# Simply accessing the page
Scenario: Navigate to the Categories page
    Given I am on the admin categories page
    Then I should see "General"
    
# Creating a new category
Scenario: Category creation
  Given I am on the admin categories page
  When I fill in "Name" with "Science Fiction"
  When I fill in "Keywords" with "Star Wars"
  When I fill in "Description" with "A long, long time ago in a galaxy not far away..."
  And I press "Save"
  Then I should see "Category was successfully saved."
  
# Editing a category
Scenario: Category deletion
  Given I am on the admin categories page
  When I fill in "Name" with "Science Fiction"
  When I fill in "Keywords" with "Star Wars"
  When I fill in "Description" with "A long, long time ago in a galaxy not far away..."
  And I press "Save"
  Then I should see "Category was successfully saved."
  When I follow "Science Fiction"
  When I fill in "Name" with "Sci-Fi"
  When I fill in "Keywords" with "Star Trek"
  When I fill in "Description" with "Beam me up, Scotty!"
  And I press "Save"
  Then I should see "Category was successfully saved."
  And I should see "Sci-Fi"
  And I should see "Star Trek"