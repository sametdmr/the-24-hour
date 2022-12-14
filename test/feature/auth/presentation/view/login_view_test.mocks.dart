// Mocks generated by Mockito 5.3.2 from annotations
// in the_24_hour/test/feature/auth/presentation/view/login_view_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:either/either.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:the_24_hour/feature/auth/domain/repository/login_repository.dart'
    as _i2;
import 'package:the_24_hour/feature/auth/domain/usecase/login_with_email_and_password.dart'
    as _i4;
import 'package:the_24_hour/feature/auth/domain/usecase/params.dart' as _i7;
import 'package:the_24_hour/product/error/failure.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLoginRepository_0 extends _i1.SmartFake
    implements _i2.LoginRepository {
  _FakeLoginRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LoginWithEmailAndPassword].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockLoginWithEmailAndPassword extends _i1.Mock
    implements _i4.LoginWithEmailAndPassword {
  @override
  _i2.LoginRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLoginRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLoginRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.LoginRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, void>> run(
          _i7.AuthorizationParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #run,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, void>>.value(
            _FakeEither_1<_i6.Failure, void>(
          this,
          Invocation.method(
            #run,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, void>>.value(
                _FakeEither_1<_i6.Failure, void>(
          this,
          Invocation.method(
            #run,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, void>>);
}
