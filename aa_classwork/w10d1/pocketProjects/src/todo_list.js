let listOfTodos = document.querySelector('.add-todo-form');
let storage = localStorage.getItem('todosArr');
let todos = storage || [];
let list = document.querySelector('.todos');

function addTodo() {
    let test = document.getElementsByName("add-todo")
    let test2 = test.value;
    // let input = document.querySelector('input[name=add-todo]').value
    // const todo = {input, done: false};
    const todo = {test2, done: false };
    todos.push(todo);
    // input.value = "";
    test2.value = "";
    populateList(todos)
    localStorage.setItem('todosArr', JSON.stringify(todos))
};


function populateList(todos) {
    todos.map (todo => {
        let todoLabel = todo.createElement('label');
        let radio = document.createElement('input');
        let wrapper = document.createElement('li');
        radio.setAttribute('type', 'radio');
        todoLabel.parentNode.insertBefore(wrapper, todoLabel)
        radio.parentNode.insertBefore(wrapper, radio)
        wrapper.appendChild(todoLabel);
        wrapper.appendChild(radio);
        let todoList = document.querySelector('.todos');
        todoList.appendChild(wrapper);
    });
};

listOfTodos.addEventListener("submit", addTodo); 
let list = document.querySelector('.todos');
list.addEventListener("click", function(){

});