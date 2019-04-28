function submit1(basePath) {

//设定action
    $("#mainSubmit").attr("action", basePath + "SubmitServlet.action");
    $("#mainSubmit").submit();
}