(function() {

    var searchTimeout;
    $('#search').on('input', function(event) {
        var inputValue = $(this).val();

        
        // Wait for the user to finish typing before we search
        clearTimeout(searchTimeout);
        searchTimeout = setTimeout(function() {
            if(inputValue == '') {
                toggleSearchResultVisibility(false);
            } else {
                search(inputValue, function(result) {
                    console.log(result);
                    showSearchResult(result);
                });
            }
        }, 400);
    });

    /**
     * This callback is displayed as part of the Requester class.
     * @callback searchResult
     * @param {string} result
     */

    /**
     * Search for broadcasts
     * @param {String} searchString
     * @param {searchResult} onComplate When the search is completed
     */
    function search(searchString, onComplate) {
        $.ajax({
            method: "GET",
            url: "Models/search.php",
            data: {searchString: searchString}
        }).done(function( msg ) {
            onComplate(msg);
        }).fail(function(error) {
            console.log(error);
        });
    }

    function showSearchResult(content) {
        $searchResultElement = $('.search-result');
        
        if(content == '') {
            $searchResultElement.html('Inget resultat');
        }
        else {
            $searchResultElement.html(content);
        }
        toggleSearchResultVisibility(true);
    }

    /**
     * Hide or show the search result
     * @param {boolean} visible 
     */
    function toggleSearchResultVisibility(visible) {
        $searchResultElement = $('.search-result');
        if(visible) {
            $searchResultElement.addClass('active');
        }
        else {
            $searchResultElement.removeClass('active');
        }
    }

})();