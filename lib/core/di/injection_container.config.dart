// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nxt_task/core/logic/preferences_cubit/preferences_cubit.dart'
    as _i4;
import 'package:nxt_task/core/network/service.dart' as _i3;
import 'package:nxt_task/features/reservations/data/data_sources/reservations_remote_data_source.dart'
    as _i5;
import 'package:nxt_task/features/reservations/data/repositories/reservations_repo_impl.dart'
    as _i7;
import 'package:nxt_task/features/reservations/domain/repositories/reservations_repo.dart'
    as _i6;
import 'package:nxt_task/features/reservations/presentation/manager/reservation_cubit.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.NetworkService>(() => _i3.NetworkService.init());
    gh.factory<_i4.PreferencesCubit>(() => _i4.PreferencesCubit());
    gh.lazySingleton<_i5.ReservationsRemoteDataSource>(() =>
        _i5.ReservationsRemoteDataSourceImpl(
            networkService: gh<_i3.NetworkService>()));
    gh.lazySingleton<_i6.ReservationsRepo>(() => _i7.ReservationsRepoImpl(
        remoteDataSource: gh<_i5.ReservationsRemoteDataSource>()));
    gh.factory<_i8.ReservationCubit>(
        () => _i8.ReservationCubit(gh<_i6.ReservationsRepo>()));
    return this;
  }
}
