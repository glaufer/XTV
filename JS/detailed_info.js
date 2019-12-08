(function(broadcastIDFromURL) {
    var $detailedInfoContainer = $('.detailed-info-container');
    var $timelineWrapper = $('.timeline-wrapper');

    function showSidePanel($broadcastData) {       
        var programName = $broadcastData.data('programname');
        var programSubName = $broadcastData.data('subname');
        var description = $broadcastData.data('description');
        var start = $broadcastData.data('start');
        var episodeNumber = $broadcastData.data('epnumber');
        var seasonNumber = $broadcastData.data('season');
        var duration = $broadcastData.data('duration');
        var lang = $broadcastData.data('language');
        var subtitles = $broadcastData.data('subtitles');
        var live = $broadcastData.data('live');
        var reprise = $broadcastData.data('reprise');
        var outsideSE = $broadcastData.data('worldwide');
        $detailedInfoContainer.addClass('active');
        $timelineWrapper.addClass('info-panel-open');
        
        hideInfoParts();
        setTimeout(function() {
            $('.program-name').html(programName);
            $('.program-sub-name').html(programSubName);
            $('.episode-num').html(episodeNumber);
            $('.episode-season-num').html(seasonNumber);
            $('.episode-description').html(description);
            $('.episode-time-start').html(start);
            $('.episode-time-duration').html(duration);
            $('.episode-speak-lang').html(lang ? '<img src="Assets/flags/' + lang + '.png" alt=""/>' : '');
            $('.episode-subtitles').html(subtitles ? '<img src="Assets/subtitles.svg" alt=""/>' : '');
            $('.episode-live').html(live ? '<img src="Assets/live.svg" alt=""/>' : '');
            $('.episode-reprise').html(reprise ? '<img src="Assets/reprise.svg" alt=""/>' : '');
            $('.episode-outsideSE').html(outsideSE ? '<img src="Assets/earth.svg" alt=""/>' : '');
            showInfoParts($('.detailed-info__part'), 0);
        }, 250);
    }

    /**
     * Shows different info parts gradually 
     * @param {JQuery} $elements 
     * @param {Number} index 
     */
    function showInfoParts($elements, index) {
        if(index >= $elements.length) {
            return;
        }
        $elements.eq(index).addClass('active');
        setTimeout(function() {
            showInfoParts($elements, index + 1);
        }, 100);
    }

    function hideInfoParts() {
        $('.detailed-info__part').removeClass('active');
    }

    function hideSidePanel() {
        hideInfoParts();
        $detailedInfoContainer.removeClass('active');
        $timelineWrapper.removeClass('info-panel-open');
    }


    $('.broadcast-wrapper').click(function() {
        showSidePanel($(this).find('.broadcast-container'));
    });

    $('#close-info-container-button').click(function() {
        hideSidePanel();
    });

    $('.broadcast-wrapper').each(function() {
        var element = this;
        if (element.offsetHeight < element.scrollHeight ||
            element.offsetWidth < element.scrollWidth) {
            $(this).addClass('content-overflow');
        }
    });

    $('.search-result').on('click', '.search-result-row', function() {
        var broadCastIID = $(this).data('id');
        var $broadCastElement = $('#' + broadCastIID);
        showSidePanel($broadCastElement);
    });

    $(document).ready(function() {
        if(broadcastIDFromURL) {
            var $broadCastElement = $('#' + broadcastIDFromURL);
            if($broadCastElement.length) {
                setTimeout(function() {
                    $broadCastElement.get(0).scrollIntoView();
                }, 250);
                showSidePanel($broadCastElement);
            }
        }
    });
})(broadcastIDFromURL);
