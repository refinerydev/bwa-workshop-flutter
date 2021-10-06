import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutmov/model/movie_model.dart';
import 'package:flutmov/service/movie_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is HomeGetMovies) {
        try {
          emit(HomeLoading());

          final data = await MoviesService().getNowMovies();

          emit(HomeSuccess(data));
        } catch (e) {
          emit(HomeFailed());
        }
      }
    });
  }
}
