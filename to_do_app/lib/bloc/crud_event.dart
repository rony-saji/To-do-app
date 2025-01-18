part of 'crud_bloc.dart';

abstract class CrudEvent extends Equatable {
  const CrudEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends CrudEvent {}

class AddTodo extends CrudEvent {
  final Todo todo;

  const AddTodo(this.todo);

  @override
  List<Object> get props => [todo];
}

class UpdateTodo extends CrudEvent {
  final Todo todo;

  const UpdateTodo(this.todo);

  @override
  List<Object> get props => [todo];
}

class DeleteTodo extends CrudEvent {
  final int id;

  const DeleteTodo(this.id);

  @override
  List<Object> get props => [id];
}