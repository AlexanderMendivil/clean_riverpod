// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteRepositoryProviderHash() =>
    r'5b31106d6fe25ea370544d997d8b147cbb04723c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [favoriteRepositoryProvider].
@ProviderFor(favoriteRepositoryProvider)
const favoriteRepositoryProviderProvider = FavoriteRepositoryProviderFamily();

/// See also [favoriteRepositoryProvider].
class FavoriteRepositoryProviderFamily extends Family<LocalStorageImpl> {
  /// See also [favoriteRepositoryProvider].
  const FavoriteRepositoryProviderFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'favoriteRepositoryProviderProvider';

  /// See also [favoriteRepositoryProvider].
  FavoriteRepositoryProviderProvider call(
    Isar isar,
  ) {
    return FavoriteRepositoryProviderProvider(
      isar,
    );
  }

  @visibleForOverriding
  @override
  FavoriteRepositoryProviderProvider getProviderOverride(
    covariant FavoriteRepositoryProviderProvider provider,
  ) {
    return call(
      provider.isar,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      LocalStorageImpl Function(FavoriteRepositoryProviderRef ref) create) {
    return _$FavoriteRepositoryProviderFamilyOverride(this, create);
  }
}

class _$FavoriteRepositoryProviderFamilyOverride
    implements FamilyOverride<LocalStorageImpl> {
  _$FavoriteRepositoryProviderFamilyOverride(
      this.overriddenFamily, this.create);

  final LocalStorageImpl Function(FavoriteRepositoryProviderRef ref) create;

  @override
  final FavoriteRepositoryProviderFamily overriddenFamily;

  @override
  FavoriteRepositoryProviderProvider getProviderOverride(
    covariant FavoriteRepositoryProviderProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [favoriteRepositoryProvider].
class FavoriteRepositoryProviderProvider
    extends AutoDisposeProvider<LocalStorageImpl> {
  /// See also [favoriteRepositoryProvider].
  FavoriteRepositoryProviderProvider(
    Isar isar,
  ) : this._internal(
          (ref) => favoriteRepositoryProvider(
            ref as FavoriteRepositoryProviderRef,
            isar,
          ),
          from: favoriteRepositoryProviderProvider,
          name: r'favoriteRepositoryProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoriteRepositoryProviderHash,
          dependencies: FavoriteRepositoryProviderFamily._dependencies,
          allTransitiveDependencies:
              FavoriteRepositoryProviderFamily._allTransitiveDependencies,
          isar: isar,
        );

  FavoriteRepositoryProviderProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isar,
  }) : super.internal();

  final Isar isar;

  @override
  Override overrideWith(
    LocalStorageImpl Function(FavoriteRepositoryProviderRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FavoriteRepositoryProviderProvider._internal(
        (ref) => create(ref as FavoriteRepositoryProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isar: isar,
      ),
    );
  }

  @override
  (Isar,) get argument {
    return (isar,);
  }

  @override
  AutoDisposeProviderElement<LocalStorageImpl> createElement() {
    return _FavoriteRepositoryProviderProviderElement(this);
  }

  FavoriteRepositoryProviderProvider _copyWith(
    LocalStorageImpl Function(FavoriteRepositoryProviderRef ref) create,
  ) {
    return FavoriteRepositoryProviderProvider._internal(
      (ref) => create(ref as FavoriteRepositoryProviderRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      isar: isar,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteRepositoryProviderProvider && other.isar == isar;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isar.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FavoriteRepositoryProviderRef
    on AutoDisposeProviderRef<LocalStorageImpl> {
  /// The parameter `isar` of this provider.
  Isar get isar;
}

class _FavoriteRepositoryProviderProviderElement
    extends AutoDisposeProviderElement<LocalStorageImpl>
    with FavoriteRepositoryProviderRef {
  _FavoriteRepositoryProviderProviderElement(super.provider);

  @override
  Isar get isar => (origin as FavoriteRepositoryProviderProvider).isar;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
