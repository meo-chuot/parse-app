// Mocks generated by Mockito 5.4.2 from annotations
// in app/test/units/services/network/api/customer_api_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:app/services/http_service.dart' as _i2;
import 'package:app/services/network/api/customer_api_service.dart' as _i4;
import 'package:dio/dio.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeHttpService_0 extends _i1.SmartFake implements _i2.HttpService {
  _FakeHttpService_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_1<T> extends _i1.SmartFake implements _i3.Response<T> {
  _FakeResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CustomerApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCustomerApiService extends _i1.Mock
    implements _i4.CustomerApiService {
  MockCustomerApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.HttpService get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeHttpService_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.HttpService);
  @override
  _i5.Future<_i3.Response<dynamic>> create({
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? password,
    String? phone,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #create,
          [],
          {
            #firstName: firstName,
            #lastName: lastName,
            #email: email,
            #password: password,
            #phone: phone,
          },
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #create,
            [],
            {
              #firstName: firstName,
              #lastName: lastName,
              #email: email,
              #password: password,
              #phone: phone,
            },
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> me() => (super.noSuchMethod(
        Invocation.method(
          #me,
          [],
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #me,
            [],
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> update({
    String? firstName,
    String? lastName,
    String? password,
    String? phone,
    String? email,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [],
          {
            #firstName: firstName,
            #lastName: lastName,
            #password: password,
            #phone: phone,
            #email: email,
          },
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #update,
            [],
            {
              #firstName: firstName,
              #lastName: lastName,
              #password: password,
              #phone: phone,
              #email: email,
            },
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> orders({
    String? q,
    String? id,
    List<String>? status,
    List<String>? fulfillmentStatus,
    List<String>? paymentStatus,
    String? displayId,
    String? cartId,
    String? email,
    String? regionId,
    String? currencyCode,
    String? taxRate,
    int? limit,
    int? offset,
    String? fields,
    String? expand,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #orders,
          [],
          {
            #q: q,
            #id: id,
            #status: status,
            #fulfillmentStatus: fulfillmentStatus,
            #paymentStatus: paymentStatus,
            #displayId: displayId,
            #cartId: cartId,
            #email: email,
            #regionId: regionId,
            #currencyCode: currencyCode,
            #taxRate: taxRate,
            #limit: limit,
            #offset: offset,
            #fields: fields,
            #expand: expand,
          },
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #orders,
            [],
            {
              #q: q,
              #id: id,
              #status: status,
              #fulfillmentStatus: fulfillmentStatus,
              #paymentStatus: paymentStatus,
              #displayId: displayId,
              #cartId: cartId,
              #email: email,
              #regionId: regionId,
              #currencyCode: currencyCode,
              #taxRate: taxRate,
              #limit: limit,
              #offset: offset,
              #fields: fields,
              #expand: expand,
            },
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> deleteAddress(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAddress,
          [id],
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #deleteAddress,
            [id],
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> paymentMethods() => (super.noSuchMethod(
        Invocation.method(
          #paymentMethods,
          [],
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #paymentMethods,
            [],
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> resetPassword(
    String? email,
    String? password,
    String? token,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #resetPassword,
          [
            email,
            password,
            token,
          ],
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #resetPassword,
            [
              email,
              password,
              token,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> requestResetPassword(String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestResetPassword,
          [email],
        ),
        returnValue:
            _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #requestResetPassword,
            [email],
          ),
        )),
      ) as _i5.Future<_i3.Response<dynamic>>);
}