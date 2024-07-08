import 'package:bilheteria_panucci/models/movie.dart';
import 'package:bilheteria_panucci/services/movies_api.dart';
import 'package:bloc/bloc.dart';

part 'home_states.dart';
class HomeCubit extends Cubit<HomeStates>{

  HomeCubit():super(HomeInitial());
  
  final HomeService homeService = HomeService();
  Future<void> getMovies() async{
    emit(HomeLoading());
    try{
       final List<Movie> movies = await homeService.fetchMovies();
       emit(HomeSucess(movies));
    }catch(e){
       emit(HomeError('Não foi possivél carregar a lista de filmes'));
    };
    
  }

} 