$(document).on('turbolinks:load', function() {
    $('#asdfasf').click(function(){ 
        startModal();
        $('select').formSelect();
     });

     $('.dropdown-trigger').dropdown({
        constrainWidth: false
     });

     $(".value-input").maskMoney({showSymbol:true, symbol:"", decimal:".", thousands:""});       
});

function checkFile() {
    $("#docFilesUpload").removeClass("disabled");  
}