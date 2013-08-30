// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function(){
  $('#new_tag').select2({
    tags: true,
    tokenSeparators: [",", " "],
    createSearchChoice: function(term, data) {
      return {
        id: term,
        text: term
      };
    },
    multiple: true,
    ajax: {
      url: 'http://localhost:3000/tags.json',
      dataType: "json",
      data: function(term, page) {
        return {
          q: term
        };
      },
      results: function(data, page) {
        return {
          results: $.parseJSON(data)
        };
      }
    }
  });
});
  
    