#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@11
Feature: Evaluate Graph module
  I want to use this template for my feature file

@tag1
 Scenario Outline: User is able to navigate Graph 
		Given User click on Get started button on Graph module
		When User click on Graph button
		And click Try here button and navigate to try edidor page
		When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And User click on run button
    Then User should be presented with run result
    Examples:
    |Sheetname | RowNumber|
    |Sheet2    |         0|
  
@tag2
Scenario Outline: User is able to navigate to tryeditor page and run invalid python code
    Given The user is on try edidor page
    When The user enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And User click on run button
    Then User should get alert message
    Examples:
    |Sheetname | RowNumber|
    |Sheet2    |         1|
    
 @tag3
 Scenario Outline: User is able to navigate to tryeditor page and run valid python code
    Given User click on Graph Representations text  
    And click Try here button and navigate to try edidor page
    When The user enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And User click on run button
    Then User should be presented with run result
    Examples:
    |Sheetname | RowNumber|
    |Sheet2    |         0|
   
  @tag4
  Scenario Outline: User is able to navigate to tryeditor page and run invalid python code
    Given The user is on try edidor page
    When The user enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
    And User click on run button
    Then User should get alert message
    Examples:
    |Sheetname | RowNumber|
    |Sheet2    |         1| 
    
    @tag5
    Scenario: User validating Practice Questions Page and navigate back to home page
   Given  The user is in Graph Representations page
   When  User click on practice questons in Graph Representations page
   Then  Navigate back to Graph Representations page
   Then  Navigate back to Homepage 
   
   @tag6
   Scenario: User is able to sign out 
   Given The user is on Homepage
   When The user clicks on sign out button
   Then user able to sigout and navigate to home page
   