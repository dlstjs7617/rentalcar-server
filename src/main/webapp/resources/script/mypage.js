$(document).ready (() => {
    $("#edit-myAccount").click(e => {
        location.href="updateUser";
    });
    
    $("#deleteAccount").click(e => {
        location.href="deleteUser";
    });
});