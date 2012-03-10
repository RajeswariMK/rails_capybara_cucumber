Feature: Manage Products
    In order to manage products
    As an user
    I can able to create products

	Scenario: Products List
	    Given I have list of products
	    When I go to the index page
	    Then I should see a product

    Scenario: Products List without products
         Given I have no products
         When I go to the index page
         Then I should see new product link
         
    Scenario: Product show
    	    Given I have list of products
    	    When I go to first product
    	    Then I should see a product
    	    And I should see edit link 	
    	    
    Scenario: Creating New Product
         Given I have no products
         And I go to the index page	    
         When I go to new product link
         Then I should have one product
         
    Scenario: Product Edit
         Given I have list of products
         And I go to the index page 
         When I go to edit first product link     
         Then I should update product
         
