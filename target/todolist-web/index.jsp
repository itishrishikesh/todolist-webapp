<html>
    <head>
        <title>todolist</title>
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/pure-min.css" integrity="sha384-Uu6IeWbM+gzNVXJcM9XV3SohHtmWE+3VGi496jvgX1jyvDTXfdK+rfZc8C1Aehk5" crossorigin="anonymous">
        <style scoped="">
                .button-success,
                .button-error,
                .button-warning,
                .button-secondary {
                    color: white;
                    border-radius: 4px;
                    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
                }

                .button-success {
                    background: rgb(28, 184, 65);
                    /* this is a green */
                }

                .button-error {
                    background: rgb(202, 60, 60);
                    /* this is a maroon */
                }

                .button-warning {
                    background: rgb(223, 117, 20);
                    /* this is an orange */
                }

                .button-secondary {
                    background: rgb(66, 184, 221);
                    /* this is a light blue */
                }
            </style>
    </head>
    <body style='margin: auto; width: 600px; height: 1000px;'>
    <br />
    <h3> ToDoList </h3>
    <div class='pure-form'>
        <input type="text" id = "task"/>
        <button class='pure-button' id="btnAddTask">add task</button>
    </div>
    <br>
    <div id="task_list">
        <span id="notask">No Tasks Added</span>
    </div>

    <script type="text/javascript">
        function getElementsById(elementID){
            var elementCollection = new Array();
            var allElements = document.getElementsByTagName("*");
            for(i = 0; i < allElements.length; i++){
                if(allElements[i].id == elementID)
                    elementCollection.push(allElements[i]);

            }
            return elementCollection;
        }
        function addTask(){
        if(document.getElementById("notask") != null) document.getElementById("notask").remove();
            if(document.getElementById("task").value != ""){
                document.getElementById("task_list").innerHTML = document.getElementById("task_list").innerHTML +
                            "<hr><div id = 'list_item' class = 'list_item_parent'> <span class='pure-u-1-2 list_item_title'>" +
                            document.getElementById("task").value +
                            " </span> "+
                            "<button class='button-success pure-button' id='btnCompleted'>complete</button>" +
                            " <button class='button-error pure-button' id='btnDeleted'>delete</button>"+
                            "</div><br><hr>";
                            document.getElementById("task").value = "";
            }

            getElementsById("btnCompleted").forEach(function(elem) {
                elem.addEventListener("click", onClickCompleted, true);
            })
            getElementsById("btnDeleted").forEach(function(elem) {
                elem.addEventListener("click", onClickDeleted, true);
            })
        }
        function onClickCompleted(e){
            e.target.parentNode.style.backgroundColor = 'green';
        }
        function onClickDeleted(e){
            e.target.parentNode.remove();
        }
        document.getElementById("btnAddTask").addEventListener("click", addTask, false);
    </script>
    </body>
</html>
