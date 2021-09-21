<html>
    <head>
        <script>
            function addTask(){
                document.getElementById("task_list").innerHTML = document.getElementById("task_list").innerHTML + " <br>" + document.getElementById("task").textContent
            }
        </script>
    </head>
<body>
    
    <input type="text" id = "task" onclick="addTask()"/>
    <button>add task</button>
    <div id="task_list"></div>
</body>
</html>
