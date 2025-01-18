part of 'crud_bloc.dart';

abstract class CrudState extends Equatable {
  const CrudState();
  
  @override
  List<Object> get props => [];
}
class CrudInitial extends CrudState {}

class DisplayTodos extends CrudState {
  final List<Todo> todos;

  const DisplayTodos(this.todos);

  @override
  List<Object> get props => [todos];
}



