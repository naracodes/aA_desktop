import {RECEIVE_TODOS} from '../actions/todo_actions';
import {RECEIVE_TODO} from '../actions/todo_actions';
import {CLEAR_ALL} from '../actions/todo_actions';
import { merge } from 'lodash';

const initialState = {
    1: {
        id: 1,
        title: "wash car",
        body: "with soap",
        done: false
    },
    2: {
        id: 2,
        title: "wash dog",
        body: "with shampoo",
        done: true
    }
};


const todosReducer = (state=initialState, action) => {
    Object.freeze(state);

    switch(action.type) {
        case RECEIVE_TODO:
            const newTodo = {
                [action.todo.id]: action.todo
            }
            const newState = merge({}, state, newTodo);
            debugger
            return newState;
        
        case RECEIVE_TODOS:
            let tempState = {};
            action.todos.forEach((todo) => {
                tempState = merge({}, tempState, todo)
            });
            const newState1 = merge({}, state, tempState);
            return newState1;

        case CLEAR_ALL:
            return {};
        

        default:
            return state;


    }
};

export default todosReducer;