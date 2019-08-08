function setFeatured(post_id,event){
    $.ajax({
        headers :{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        type    : "POST",
        url     : "/posts/"+post_id+"/setfeatured",
        dataType: "json",
        /* beforeSend: function(){
            $('.content').loading({
                message: 'Setting as featured...'
            })
            $('.content').loading('start')
        }, */
        success : function(response){
            /* $('.content').loading('stop'); */
            if(response["accept"]!=1){
                $.escapeSelector({
                    title:'Sorry',
                    theme: 'bootstrap',
                    content: response["alert"],
                });
                $(event).prop('cheked',false);
            }
            /* if(response["accept"]==1){
                let badge = $(`#badge${post_id}`);
                badge.text('Publish as featured');
				badge.removeClass('badge-primary badge-dark badge-warning badge-info badge-primary');
				badge.addClass('badge-success');
            } */
        },
        error : function (e) {
			/* $('.content').loading('stop'); */
			$(this).alert({
				title: 'Sorry, there was an error',
				theme: 'bootstrap',
				content: e.responseJSON.message
			});
			$(event).prop('checked', false);
		}

    }).done(function(){});
}

function unsetFeatured(post_id,event){
    $.ajax({
        headers :{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        type    : "POST",
        url     : "/posts/"+post_id+"/unsetfeatured",
        dataType: "json",
        /* beforeSend: function(){
            $('.content').loading({
                message: 'Setting as featured...'
            })
            $('.content').loading('start')
        }, */
        success : function(response){
            /* $('.content').loading('stop'); */
            if(response["accept"]!=1){
                $.escapeSelector({
                    title:'Sorry',
                    theme: 'bootstrap',
                    content: response["alert"],
                });
                $(event).prop('cheked',false);
            }
            /* if(response["accept"]==1){
                let badge = $(`#badge${post_id}`);
                badge.text('Publish as featured');
				badge.removeClass('badge-primary badge-dark badge-warning badge-info badge-primary');
				badge.addClass('badge-success');
            } */
        },
        error : function (e) {
			/* $('.content').loading('stop'); */
			$(this).alert({
				title: 'Sorry, there was an error',
				theme: 'bootstrap',
				content: e.responseJSON.message
			});
			$(event).prop('checked', false);
		}

    }).done(function(){});
}



function featured(post_id, event){
    if($('#switch'+post_id).is(':checked')){
        setFeatured(post_id,event);
    }
    else{
        unsetFeatured(post_id,event);
    }
}