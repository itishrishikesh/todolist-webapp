<html>
    <head>
        <title>todolist</title>
    </head>
<body>
    <script type="text/javascript">
                function addTask(){
                    console.log("Inside AddTask Function");
                    console.log("1 - " + document.getElementById("task_list").innerHTML + " <br>" + document.getElementById("task").innerHTML);
                    document.getElementById("task_list").innerHTML = document.getElementById("task_list").innerHTML + " <br>" + document.getElementById("task").innerHTML;
                    console.log("2 - document.getElementById("task_list").innerHTML");
                }
            </script>
    <input type="text" id = "task"/>
    <button  onclick="addTask();">add task</button>
    <div id="task_list"></div>
</body>
</html>
