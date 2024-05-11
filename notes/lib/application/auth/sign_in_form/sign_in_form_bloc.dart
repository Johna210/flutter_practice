import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:notes/domain/auth/auth_failure.dart';
import 'package:notes/domain/auth/i_auth_facade.dart';
import 'package:notes/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<RegisterWithEmailAndPasswordPressed>(
        _onRegisterWithEmailAndPasswordPressed);
    on<SignInWithEmailAndPasswordPressed>(_onSignInWithEmailAndPasswordPressed);
    on<SignInWithGooglePressed>(_onSignInWithGooglePressed);
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _onPasswordChanged(
      PasswordChanged event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      password: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _onRegisterWithEmailAndPasswordPressed(
      RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    _perforActionOnAuthFacade(
      event,
      emit,
      _authFacade.registerWithEmailAndPassword,
    );
  }

  Future<void> _onSignInWithEmailAndPasswordPressed(
      SignInWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    _perforActionOnAuthFacade(
      event,
      emit,
      _authFacade.signInWithEmailAndPassword,
    );
  }

  // Helper function to perform register and sign in operations
  Future<void> _perforActionOnAuthFacade(
    dynamic event,
    Emitter<SignInFormState> emit,
    // Higher order function
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress email, required Password password})
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit> failureOrSuccess = right(unit);

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
          email: state.emailAddress, password: state.password);
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      // Instead of failureOrScuccess == null ? none() : some(failureOrSuccess)
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  // For sign in using google account
  Future<void> _onSignInWithGooglePressed(
      SignInWithGooglePressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}
