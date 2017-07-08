# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  It's a ruby on rails project.
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
  A network has many Shows
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  A show belongs to a network
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
  A user has many shows through programs. A Show has many users through programs
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
  The through part has an attribute called favorite which is a boolean
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  User uses devise for password validations, Show validates for presence of all attributes
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  Scope to find all of my users favorite show.
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
  Add genre to Show using a custom writer when adding a new show
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
  Above three you'll find Devise is added
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  Github
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  users/shows
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
  users/shows/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  error messages pop up for log in, signup, new show form

Confirm:
- [x] The application is pretty DRY
  put some code in application controller to check is user was signed in, if not redirect to root path if they try to access any other page other than root
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
  didnt need any
- [x] Views use partials if appropriate
  partial form for new/edit show form
