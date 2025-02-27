import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lunius/blocs/locale/locale_event.dart';
import 'package:lunius/blocs/locale/locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleState(Locale('en')));

  Stream<LocaleState> mapEventToState(LocaleEvent event) async* {
    if (event is ChangeLocale) {
      yield LocaleState(event.locale);
    }
  }
}