part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailed extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MovieModel> nowPlayingMovies;
  final List<MovieModel> upcomingPlayingMovies;

  HomeSuccess(this.nowPlayingMovies, this.upcomingPlayingMovies);

  @override
  List<Object> get props => ([nowPlayingMovies, upcomingPlayingMovies]);
}
