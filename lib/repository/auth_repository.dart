// part of 'one_click_repository.dart';
//
// extension AuthRepository on OneClickRepository {
//   Future<ApiResult<LoginEntity>> login({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final response = await _dioHttpService.post<String>(
//         ApiConstant.login,
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );
//       return ApiResult.success(loginEntityFromJson(response ?? ''));
//     } catch (e) {
//       return ApiResult.failure(NetworkExceptions.getDioException(e));
//     }
//   }
// }
