import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutmov/model/movie_model.dart';
import 'package:flutmov/service/movie_service.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  UpcomingBloc() : super(UpcomingInitial()) {
    on<UpcomingEvent>((event, emit) async {
      if (event is UpcomingGetMovies) {
        try {
          emit(UpcomingLoading());

          final data = await MoviesService().getUpcomingMovies();

          emit(UpcomingSuccess(data));
        } catch (e) {
          emit(UpcomingFailed());
        }
      }
    });
  }
}
