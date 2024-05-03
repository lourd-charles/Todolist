// SPDX-License-Identifier: MIT

pragma solidity 0.8.1;


contract Todolist{
 

     uint256 public constant duedate = 10 days;
     uint public taskId;

      struct Task{
        uint256 id;
        string content;
        bool completed;

    }
    
     mapping(uint256 => Task[]) public tasks;
    
    
    function addTask(string memory _task ) public {
       
      Task memory newTask = Task({
          id: taskId,
          content: _task, 
          completed: false
        });


       tasks[taskId].push(newTask);
       //taskId++;
       
       }
      function getTask(uint _i) public view returns (Task memory) {
      return tasks[taskId][_i];
      }

}
