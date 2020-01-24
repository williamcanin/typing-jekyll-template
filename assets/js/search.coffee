---
---

# /* Include Data Base*/
{% include liquid/data %}

# Using Coffescript
SimpleJekyllSearch
    searchInput: document.getElementById 'layout-search__input'
    resultsContainer: document.getElementById 'layout-search__data'
    json: '{{ "/assets/json/search.json" | prepend: site.baseurl | prepend: site.url }}'
    searchResultTemplate: '<li><article>><a href="{url}"> {title} <span class="layout-search__data__entry-date"><time datetime="{date}">{date}</time></span></a></article></li>'
    noResultsText: '<p class="layout-search__data__not-search">{{ load_data.website.content.search.input.notfound }}</p>'
    limit:10
    fuzzy:!1

# Using Javascript
# /* Initialize jekyll search element.*/
# SimpleJekyllSearch({
#   searchInput: document.getElementById('layout-search__input'),
#   resultsContainer: document.getElementById('layout-search__data'),
#   json: '{{ "/assets/json/search.json" | prepend: site.baseurl | prepend: site.url }}',
#   searchResultTemplate: '<li><article>><a href="{url}"> {title} <span class="layout-search__data__entry-date"><time datetime="{date}">{date}</time></span></a></article></li>',
#   noResultsText:'<p class="layout-search__data__not-search">{{ load_data.website.content.search.input.notfound }}</p>',
#   limit:10,
#   fuzzy:!1
# });

# Using Javascript
# /* Empty input search in moment closed */
# ClearFieldSearch = function() {
#  document.getElementById("layout-search__input").value = "";
#  document.getElementById("layout-search__data").innerHTML = "";
# }

# Using Coffescript
# /* Empty input search in moment closed */
this.ClearFieldSearch = ->
    document.getElementById('layout-search__input').value = ''
    document.getElementById('layout-search__data').innerHTML = ''
