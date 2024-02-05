// import 'package:authentication/data/repositories/authentication_repository.dart';
// import 'package:authentication/domain/entities/user_response.dart';
// import 'package:core/core.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
//
// import '../../test_helpers/init_mocks.mocks.dart';
//
// void main() {
//   late MockAuthenticationDataSource mockAuthenticationDataSource;
//   late AuthenticationRepository authenticationRepository;
//
//   setUpAll(() {
//     mockAuthenticationDataSource = MockAuthenticationDataSource();
//     authenticationRepository =
//         AuthenticationRepository(mockAuthenticationDataSource);
//   });
//
//   var signInResponse = UserResponse(
//     accessToken: "ahmed",
//     buildingId: "1",
//     companyId: "1",
//     deleted: false,
//     email: "a",
//     gender: "male",
//     image: "image",
//     nationalId: "11231213",
//     phoneNumber: "123123123",
//     role: "asdmin",
//     status: "active",
//     unitId: "12",
//     username: "ahmed jamal",
//     id: "100",
//     tokenType: "bearer",
//   );
//
//   group("test for login cases", () {
//     String mail = "ahmed@gmaill.com";
//     String pass = "123123";
//
//     test("test if returned data is Success", () async {
//       when(mockAuthenticationDataSource.signIn(mail, pass)).thenAnswer(
//           (_) async => NetworkResponse<UserResponse>(signInResponse, true, ""));
//     });
//   });
// }
