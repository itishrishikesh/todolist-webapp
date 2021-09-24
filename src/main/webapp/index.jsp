<html>
    <head>
        <title>todolist</title>
    </head>
    <body style='margin: auto; width: 300px; height: 300px;'>
    <br />
    <h3> ToDoList </h3>
    <input type="text" id = "task"/>
    <button id="btnAddTask">add task</button>
    <div id="task_list"></div>

    <script type="text/javascript">
        function addTask(){
            document.getElementById("task_list").innerHTML = document.getElementById("task_list").innerHTML + " <div id = 'list_item'>" + document.getElementById("task").value + "</div>";
            document.getElementById("task").value = "";
        }
        document.getElementById("btnAddTask").addEventListener("click", addTask, false);
    </script>
    </body>
</html>
