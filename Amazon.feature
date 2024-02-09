Feature: Amazon

Scenario Outline: Search multiple products
	Given Navigate to the Amazon portal
	And Validate Amazon log is present
	When Search for <Products>
	Then Validate the <Products> from result info bar

Examples:
	| Products |
	| phone    |
	| Toy      |

Scenario: Item added to cart
	Given Navigate to the Amazon portal
	And Validate Amazon log is present
	And Search for a product
	And Select the first product
	When Click add to cart button
	Then Validate product added to the cart

Scenario: Validate image
	Given Navigate to the Amazon portal
	And Select the Hamburger Menu button
	When Select option 'Mobiles, Computers'
	And Select option 'Software'
	Then Validate log is present under Topcategories section
	
