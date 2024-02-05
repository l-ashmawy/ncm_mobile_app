// // Mocks generated by Mockito 5.4.0 from annotations
// // in authentication/test/test_helpers/init_mocks.dart.
// // Do not manually edit this file.
//
// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'dart:async' as _i6;
//
// import 'package:authentication/data/datasources/authentication_data_source.dart'
//     as _i12;
// import 'package:authentication/data/repositories/authentication_repository.dart'
//     as _i5;
// import 'package:authentication/domain/datasources/i_authentication_datasource.dart'
//     as _i2;
// import 'package:authentication/domain/entities/buildings_response/buildings_response.dart'
//     as _i11;
// import 'package:authentication/domain/entities/companies_response/companies_response.dart'
//     as _i9;
// import 'package:authentication/domain/entities/compounds/compounds_response.dart'
//     as _i10;
// import 'package:authentication/domain/entities/user_response.dart' as _i7;
// import 'package:core/core.dart' as _i4;
// import 'package:core/networking/global_response.dart' as _i8;
// import 'package:core/networking/network_response.dart' as _i3;
// import 'package:mockito/mockito.dart' as _i1;
//
// // ignore_for_file: type=lint
// // ignore_for_file: avoid_redundant_argument_values
// // ignore_for_file: avoid_setters_without_getters
// // ignore_for_file: comment_references
// // ignore_for_file: implementation_imports
// // ignore_for_file: invalid_use_of_visible_for_testing_member
// // ignore_for_file: prefer_const_constructors
// // ignore_for_file: unnecessary_parenthesis
// // ignore_for_file: camel_case_types
// // ignore_for_file: subtype_of_sealed_class
//
// class _FakeIAuthenticationDatasource_0 extends _i1.SmartFake
//     implements _i2.IAuthenticationDatasource {
//   _FakeIAuthenticationDatasource_0(
//     Object parent,
//     Invocation parentInvocation,
//   ) : super(
//           parent,
//           parentInvocation,
//         );
// }
//
// class _FakeNetworkResponse_1<T> extends _i1.SmartFake
//     implements _i3.NetworkResponse<T> {
//   _FakeNetworkResponse_1(
//     Object parent,
//     Invocation parentInvocation,
//   ) : super(
//           parent,
//           parentInvocation,
//         );
// }
//
// class _FakeNetworkHandler_2 extends _i1.SmartFake
//     implements _i4.NetworkHandler {
//   _FakeNetworkHandler_2(
//     Object parent,
//     Invocation parentInvocation,
//   ) : super(
//           parent,
//           parentInvocation,
//         );
// }
//
// /// A class which mocks [AuthenticationRepository].
// ///
// /// See the documentation for Mockito's code generation for more information.
// class MockAuthenticationRepository extends _i1.Mock
//     implements _i5.AuthenticationRepository {
//   MockAuthenticationRepository() {
//     _i1.throwOnMissingStub(this);
//   }
//
//   @override
//   _i2.IAuthenticationDatasource get authenticationDatasource =>
//       (super.noSuchMethod(
//         Invocation.getter(#authenticationDatasource),
//         returnValue: _FakeIAuthenticationDatasource_0(
//           this,
//           Invocation.getter(#authenticationDatasource),
//         ),
//       ) as _i2.IAuthenticationDatasource);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> signIn(
//     String? mail,
//     String? password,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #signIn,
//           [
//             mail,
//             password,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #signIn,
//             [
//               mail,
//               password,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> signUp(
//     String? name,
//     String? mail,
//     String? phone,
//     String? nationalId,
//     String? gender,
//     String? companyId,
//     String? compoundId,
//     String? buildingId,
//     String? password,
//     String? confirmPassword,
//     String? image,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #signUp,
//           [
//             name,
//             mail,
//             phone,
//             nationalId,
//             gender,
//             companyId,
//             compoundId,
//             buildingId,
//             password,
//             confirmPassword,
//             image,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #signUp,
//             [
//               name,
//               mail,
//               phone,
//               nationalId,
//               gender,
//               companyId,
//               compoundId,
//               buildingId,
//               password,
//               confirmPassword,
//               image,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> updateProfile({
//     String? name,
//     String? mail,
//     String? phone,
//     String? nationalId,
//     String? gender,
//     String? password,
//     String? confirmPassword,
//     String? image,
//   }) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #updateProfile,
//           [],
//           {
//             #name: name,
//             #mail: mail,
//             #phone: phone,
//             #nationalId: nationalId,
//             #gender: gender,
//             #password: password,
//             #confirmPassword: confirmPassword,
//             #image: image,
//           },
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #updateProfile,
//             [],
//             {
//               #name: name,
//               #mail: mail,
//               #phone: phone,
//               #nationalId: nationalId,
//               #gender: gender,
//               #password: password,
//               #confirmPassword: confirmPassword,
//               #image: image,
//             },
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>> deleteProfile() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #deleteProfile,
//           [],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>>.value(
//             _FakeNetworkResponse_1<_i3.BoolResponse>(
//           this,
//           Invocation.method(
//             #deleteProfile,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> forgetPassword(
//           String? mail) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #forgetPassword,
//           [mail],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #forgetPassword,
//             [mail],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> checkCode(
//     String? mail,
//     String? code,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #checkCode,
//           [
//             mail,
//             code,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #checkCode,
//             [
//               mail,
//               code,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> updatePassword(
//     String? mail,
//     String? code,
//     String? password,
//     String? confirmPassword,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #updatePassword,
//           [
//             mail,
//             code,
//             password,
//             confirmPassword,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #updatePassword,
//             [
//               mail,
//               code,
//               password,
//               confirmPassword,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>> getCompanies() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getCompanies,
//           [],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>>.value(
//                 _FakeNetworkResponse_1<_i9.CompaniesResponse>(
//           this,
//           Invocation.method(
//             #getCompanies,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>> getCompounds(
//           String? companyId) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getCompounds,
//           [companyId],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>>.value(
//                 _FakeNetworkResponse_1<_i10.CompoundsResponse>(
//           this,
//           Invocation.method(
//             #getCompounds,
//             [companyId],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>> getBuildings(
//           String? compoundId) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getBuildings,
//           [compoundId],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>>.value(
//                 _FakeNetworkResponse_1<_i11.BuildingsResponse>(
//           this,
//           Invocation.method(
//             #getBuildings,
//             [compoundId],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> getProfile() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getProfile,
//           [],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #getProfile,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
// }
//
// /// A class which mocks [AuthenticationDataSource].
// ///
// /// See the documentation for Mockito's code generation for more information.
// class MockAuthenticationDataSource extends _i1.Mock
//     implements _i12.AuthenticationDataSource {
//   MockAuthenticationDataSource() {
//     _i1.throwOnMissingStub(this);
//   }
//
//   @override
//   _i4.NetworkHandler get networkHandler => (super.noSuchMethod(
//         Invocation.getter(#networkHandler),
//         returnValue: _FakeNetworkHandler_2(
//           this,
//           Invocation.getter(#networkHandler),
//         ),
//       ) as _i4.NetworkHandler);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> signIn(
//     String? mail,
//     String? password,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #signIn,
//           [
//             mail,
//             password,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #signIn,
//             [
//               mail,
//               password,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> signUp(
//     String? name,
//     String? mail,
//     String? phone,
//     String? nationalId,
//     String? gender,
//     String? companyId,
//     String? compoundId,
//     String? buildingId,
//     String? password,
//     String? confirmPassword,
//     String? image,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #signUp,
//           [
//             name,
//             mail,
//             phone,
//             nationalId,
//             gender,
//             companyId,
//             compoundId,
//             buildingId,
//             password,
//             confirmPassword,
//             image,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #signUp,
//             [
//               name,
//               mail,
//               phone,
//               nationalId,
//               gender,
//               companyId,
//               compoundId,
//               buildingId,
//               password,
//               confirmPassword,
//               image,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> updateProfile({
//     String? name,
//     String? mail,
//     String? phone,
//     String? nationalId,
//     String? gender,
//     String? password,
//     String? confirmPassword,
//     String? image,
//   }) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #updateProfile,
//           [],
//           {
//             #name: name,
//             #mail: mail,
//             #phone: phone,
//             #nationalId: nationalId,
//             #gender: gender,
//             #password: password,
//             #confirmPassword: confirmPassword,
//             #image: image,
//           },
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #updateProfile,
//             [],
//             {
//               #name: name,
//               #mail: mail,
//               #phone: phone,
//               #nationalId: nationalId,
//               #gender: gender,
//               #password: password,
//               #confirmPassword: confirmPassword,
//               #image: image,
//             },
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>> deleteProfile() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #deleteProfile,
//           [],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>>.value(
//             _FakeNetworkResponse_1<_i3.BoolResponse>(
//           this,
//           Invocation.method(
//             #deleteProfile,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i3.BoolResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> forgetPassword(
//           String? mail) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #forgetPassword,
//           [mail],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #forgetPassword,
//             [mail],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> checkCode(
//     String? mail,
//     String? code,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #checkCode,
//           [
//             mail,
//             code,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #checkCode,
//             [
//               mail,
//               code,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>> updatePassword(
//     String? mail,
//     String? code,
//     String? password,
//     String? confirmPassword,
//   ) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #updatePassword,
//           [
//             mail,
//             code,
//             password,
//             confirmPassword,
//           ],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>.value(
//             _FakeNetworkResponse_1<_i8.GlobalResponse>(
//           this,
//           Invocation.method(
//             #updatePassword,
//             [
//               mail,
//               code,
//               password,
//               confirmPassword,
//             ],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i8.GlobalResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>> getCompanies() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getCompanies,
//           [],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>>.value(
//                 _FakeNetworkResponse_1<_i9.CompaniesResponse>(
//           this,
//           Invocation.method(
//             #getCompanies,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i9.CompaniesResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>> getCompounds(
//           String? companyId) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getCompounds,
//           [companyId],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>>.value(
//                 _FakeNetworkResponse_1<_i10.CompoundsResponse>(
//           this,
//           Invocation.method(
//             #getCompounds,
//             [companyId],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i10.CompoundsResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>> getBuildings(
//           String? compoundId) =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getBuildings,
//           [compoundId],
//         ),
//         returnValue:
//             _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>>.value(
//                 _FakeNetworkResponse_1<_i11.BuildingsResponse>(
//           this,
//           Invocation.method(
//             #getBuildings,
//             [compoundId],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i11.BuildingsResponse>>);
//   @override
//   _i6.Future<_i3.NetworkResponse<_i7.UserResponse>> getProfile() =>
//       (super.noSuchMethod(
//         Invocation.method(
//           #getProfile,
//           [],
//         ),
//         returnValue: _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>.value(
//             _FakeNetworkResponse_1<_i7.UserResponse>(
//           this,
//           Invocation.method(
//             #getProfile,
//             [],
//           ),
//         )),
//       ) as _i6.Future<_i3.NetworkResponse<_i7.UserResponse>>);
// }
