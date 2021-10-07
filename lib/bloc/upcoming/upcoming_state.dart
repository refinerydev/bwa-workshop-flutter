part of 'upcoming_bloc.dart';

abstract class UpcomingState extends Equatable {
  const UpcomingState();
  
  @override
  List<Object> get props => [];
}

class UpcomingInitial extends UpcomingState {}

class UpcomingLoading extends UpcomingState {}

class UpcomingFailed extends UpcomingState {}

class UpcomingSuccess extends UpcomingState {
  final List<MovieModel> data;

  UpcomingSuccess(this.data);

  @override
  List<Object> get props => (data);
}

