// part of 'one_click_repository.dart';
//
// extension UserRepository on OneClickRepository {
//   Future<ApiResult<UserEntity>> getUser({
//     required String token,
//   }) async {
//     print("🎶🎶🎶🎶🎶🎶🎶"+token.toString());
//     try {
//       final headers = Options(headers: {"Authorization": token});
//       final response = await _dioHttpService.get(
//         ApiConstant.getUser,
//         options: headers,
//       );
//       return ApiResult.success(userEntityFromJson(response ?? ''));
//     } catch (e) {
//       return ApiResult.failure(NetworkExceptions.getDioException(e));
//     }
//   }
// }
