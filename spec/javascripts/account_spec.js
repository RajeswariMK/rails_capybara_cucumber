describe("Account", function() {
  it("cleans the number by removing spaces and dashes", function() {
    expect(Account.cleanNumber("123 4-5")).toEqual("12345");
  });
  it("should display the results",function() {
      searchResults = {results: [{id: 5, name: "Chennai"}, {id:10, name: "Chennai Garden"}]}
       spyOn($, 'ajax').andCallFake(function(url, args) { // assumes there is an ajax call for autocompleter results
         args.success(searchResults);
       });
       $('#account_user').autocomplete();
       expect($("#jasmine_content").html()).not.toContain("Chennai");
       expect($("#jasmine_content").html()).not.toContain("Chennai Garden");
       $("#mycontainer").val("chen").trigger("change"); //assumes change event triggers ajax call
       expect($("#jasmine_content").toContain("Chennai");
       expect($("#jasmine_content").toContain("Chennai Garden");
   });
});


