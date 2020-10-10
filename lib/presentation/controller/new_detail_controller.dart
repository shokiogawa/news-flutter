import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:state_notifier/state_notifier.dart';

part 'new_detail_controller.freezed.dart';
//flutter pub pub run build_runner build

@freezed
abstract class NewDetailState with _$NewDetailState{
  factory NewDetailState({
    Articles articles,
    bool favorite,
}) = _NewDetailState;
}

class NewDetailController extends StateNotifier<NewDetailState>{
  NewDetailController() : super(NewDetailState(favorite: false));

  void changeFavorite(){
    if(!state.favorite){
      state = state.copyWith(favorite: true);
      print("changeFavorite//" + state.favorite.toString());
    }
    else{
      state = state.copyWith(favorite: false);
      print("changeFavorite//" + state.favorite.toString());
    }

  }
}
