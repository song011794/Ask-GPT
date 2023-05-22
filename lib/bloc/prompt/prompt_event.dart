part of 'prompt_bloc.dart';

@freezed
class PromptEvent with _$PromptEvent{
  factory PromptEvent.fetch() = PromptFetch;
}
