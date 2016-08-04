require! {
  '../..' : object-depth
  'chai' : {expect}
}


module.exports = ->

  @Given /^the variable:$/ (code) ->
    eval "this.#{code}"


  @Given /^the variable "([^"]*)"$/ (code) ->
    eval "this.#{code}"


  @When /^running: "([^"]*)"$/ (code) ->
    eval "this.result = #{code.replace 'objectDepth(', 'objectDepth(this.'}"


  @Then /^I get (\d+)$/ (+expected-result) ->
    expect(@result).to.equal expected-result
