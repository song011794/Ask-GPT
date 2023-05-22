part of 'prompt_bloc.dart';

class Prompt {
  final String act;
  final String prompt;

  Prompt(this.act, this.prompt);
}

@freezed
class PromptState with _$PromptState{
  factory PromptState.init() = PromptInitial;
  factory PromptState.success(List<Prompt> prompts) = PromptSuccess;
  factory PromptState.loading() = PromptLoading;
  factory PromptState.failed() = PromptFailed;
}

