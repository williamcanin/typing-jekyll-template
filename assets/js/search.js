(function() {
  SimpleJekyllSearch({
    searchInput: document.getElementById('layout-search__input'),
    resultsContainer: document.getElementById('layout-search__data'),
    json: 'http://localhost:4000/typing-jekyll-template/assets/json/search.json',
    searchResultTemplate: '<li><article>><a href="{url}"> {title} <span class="layout-search__data__entry-date"><time datetime="{date}">{date}</time></span></a></article></li>',
    noResultsText: '<p class="layout-search__data__not-search">Oh heavens, no results :(</p>',
    limit: 10,
    fuzzy: !1
  });

  this.ClearFieldSearch = function() {
    document.getElementById('layout-search__input').value = '';
    return document.getElementById('layout-search__data').innerHTML = '';
  };

}).call(this);
