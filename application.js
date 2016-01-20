$(document).ready(main);

function renderColCal(select){

    var colleagueID = select.value ;
    $(document).on("change", "select#id", function(e){

            $.get("customers/"+ +$(this).val() + "/calendars/1");
        }
    );


}
