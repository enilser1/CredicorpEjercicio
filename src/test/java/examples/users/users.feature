Feature: sample karate test script
  for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
#    * url 'https://serverest.dev'
    * def now = function(){ return java.lang.System.currentTimeMillis() }



#    --------------------GET LIST----------------------

#  Scenario: get list of users
#    Given path 'usuarios'
#    When method get
#    Then status 200
#
#    * def cantidad = response.quantidade
#    * print 'the number of users is: ', cantidad

    Scenario: create a user and then get it by id
    * def user =
      """
      {
      "inputs": {},
      "query": "Esta todo correctamente?",
      "response_mode": "blocking",
      "user": "Nil"
      }
      """

    Given url 'https://api.dify.ai/v1/chat-messages'
    And header Authorization = 'Bearer app-SwuyU9MRM2ELNy5QTpGtdNmO'
    And request user
    When method post
    Then status 200

    * print response




#    -------------------------------------------------

#
#  Scenario: get all users and then get the first user by id
#    Given path 'users'
#    When method get
#    Then status 200
#
#    * def first = response[0]
#
#    Given path 'users', first.id
#    When method get
#    Then status 200
#
#  Scenario: create a user and then get it by id
#    * def user =
#      """
#      {
#        "name": "Test User",
#        "username": "testuser",
#        "email": "test@user.com",
#        "address": {
#          "street": "Has No Name",
#          "suite": "Apt. 123",
#          "city": "Electri",
#          "zipcode": "54321-6789"
#        }
#      }
#      """
#
#    Given url 'https://jsonplaceholder.typicode.com/users'
#    And request user
#    When method post
#    Then status 201
#
#    * def id = response.id
#    * print 'created id is: ', id
#
#    Given path id
#    # When method get
#    # Then status 200
#    # And match response contains user
