// import 'package:authentication/domain/entities/user_response.dart';
// import 'package:authentication/domain/usecases/login_use_case.dart';
// import 'package:core/core.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
//
// import '../test_helpers/init_mocks.mocks.dart';
//
// // import '../test_helpers/init_mocks.mocks.dart';
//
//
// void main()
// {
//   late MockAuthenticationRepository mockAuthenticationRepository;
//   late LoginUseCase usecase;
//
//   setUp(() {
//     mockAuthenticationRepository = MockAuthenticationRepository();
//     usecase = LoginUseCase(mockAuthenticationRepository);
//   });
//
//
//   var  signInResponse =  UserResponse(
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
//
//   test(
//     'should get right user response from the repository',
//     () async {
//       // arrange
//       when(mockAuthenticationRepository.signIn("1023123" , "123123"))
//           .thenAnswer((_) async => NetworkResponse<UserResponse>(signInResponse, true, ""));
//
//       // act
//       final result = await usecase.execute("1023123" , "123123");
//
//       // assert
//       expect(result.body, signInResponse);
//       expect(result.isRequestSuccess, true);
//       expect(result.errorMessage, "");
//     },
//   );
//   test(
//     'should get is request succes with false value and body to be null values in bad response case',
//     () async {
//       // arrange
//       when(mockAuthenticationRepository.signIn("1023123" , "123123"))
//           .thenAnswer((_) async => NetworkResponse<UserResponse>(UserResponse(), false, "error authentication"));
//
//       // act
//       final result = await usecase.execute("1023123" , "123123");
//
//       // assert
//       expect(result.isRequestSuccess, false);
//       expect(result.errorMessage, "error authentication");
//     },
//   );
// }
