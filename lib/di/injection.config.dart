// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************
//
// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;
// import 'package:one_click/repository/one_click_repository.dart' as _i4;
// import 'package:one_click/router/app_router.dart' as _i3;
//
// /// ignore_for_file: unnecessary_lambdas
// /// ignore_for_file: lines_longer_than_80_chars
// extension GetItInjectableX on _i1.GetIt {
//   /// initializes the registration of main-scope dependencies inside of [GetIt]
//   _i1.GetIt init({
//     String? environment,
//     _i2.EnvironmentFilter? environmentFilter,
//   }) {
//     final gh = _i2.GetItHelper(
//       this,
//       environment,
//       environmentFilter,
//     );
//     gh.singleton<_i3.AppRouter>(_i3.AppRouter());
//     gh.singleton<_i4.OneClickRepository>(_i4.OneClickRepository());
//     return this;
//   }
// }
