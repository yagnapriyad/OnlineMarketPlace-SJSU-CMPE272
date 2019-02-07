<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Task Manager | Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
        <script src="static/js/html5shiv.min.js"></script>
        <script src="static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>



  <div >
          <div id="enterDeveloperDetails">
            <h3>Enter You Details</h3>
            <form method="post"  name="enterDeveloperDetails">
            <label>What technology might be good for the project:</label>
            <input type="text" id="technology"/>
             </br>
            <label>What approach to be considered:</label>
            <input type="text" id="approach"/>
             </br>
            <label>My skillsets are :</label>
            <input type="text" id="skillset"/>
             </br>
            <label>How much would the project cost:</label>
            <input type="text" id="cost" />
            <br>
            <button id="submitButton" onclick="submitDetails()"><a href="/thankYouPage">Submit</a></button>
            </form>
          </div>
        </div>
    <script type="text/javascript">
function submitDetails(){
    alert("Welcom");
    var technology=$('#technology').val();
    var approach=$('#approach').val();
    var skillset=$('#skillset').val();
    var cost=$('#cost').val();
    var value = {
            "technology" : technology,
            "approach" : approach,
            "skillset" : skillset,
            "cost" : cost
    }
    
    
    $.ajax({
        type : "POST",
        contentType : 'application/json; charset=utf-8',
        dataType : 'json',
        url : "developerscontroller/developerpost",
        data : JSON.stringify(value),
        success : function(result) {
            console.log("SUCCESS: ", data);
            displayUsernamError(result);
        },
        error: function(e){
            console.log("ERROR: ", e);
            displayUsernamError(e);
        },
        done : function(e) {
            console.log("DONE");
        }
});
    
    
} 
</script>

    <script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>