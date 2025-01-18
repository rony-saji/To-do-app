import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:to_do_app/model.dart';

part 'crud_event.dart';
part 'crud_state.dart';

class CrudBloc extends Bloc<CrudEvent, CrudState> {
final List<Todo> _todos = []; 

  CrudBloc() : super(CrudInitial()) {
    on<LoadTodos>((event, emit) {
      // TODO: implement event handler
   emit(DisplayTodos(List.from(_todos))); 
    });
     on<AddTodo>((event, emit) {
      _todos.add(event.todo); 
      emit(DisplayTodos(List.from(_todos))); 
    });

    on<UpdateTodo>((event, emit) {
      final index = _todos.indexWhere((todo) => todo.id == event.todo.id);
      if (index != -1) {
        _todos[index] = event.todo; 
        emit(DisplayTodos(List.from(_todos))); 
      }
    });

    on<DeleteTodo>((event, emit) {
      _todos.removeWhere((todo) => todo.id == event.id); 
      emit(DisplayTodos(List.from(_todos))); 
    });
  }
}
    
  

