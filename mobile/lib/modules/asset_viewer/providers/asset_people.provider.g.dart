// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_people.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assetPeopleNotifierHash() =>
    r'192a4ee188f781000fe43f1675c49e1081ccc631';

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

abstract class _$AssetPeopleNotifier extends BuildlessAutoDisposeAsyncNotifier<
    List<PersonWithFacesResponseDto>> {
  late final Asset asset;

  Future<List<PersonWithFacesResponseDto>> build(
    Asset asset,
  );
}

/// Maintains the list of people for an asset.
///
/// Copied from [AssetPeopleNotifier].
@ProviderFor(AssetPeopleNotifier)
const assetPeopleNotifierProvider = AssetPeopleNotifierFamily();

/// Maintains the list of people for an asset.
///
/// Copied from [AssetPeopleNotifier].
class AssetPeopleNotifierFamily
    extends Family<AsyncValue<List<PersonWithFacesResponseDto>>> {
  /// Maintains the list of people for an asset.
  ///
  /// Copied from [AssetPeopleNotifier].
  const AssetPeopleNotifierFamily();

  /// Maintains the list of people for an asset.
  ///
  /// Copied from [AssetPeopleNotifier].
  AssetPeopleNotifierProvider call(
    Asset asset,
  ) {
    return AssetPeopleNotifierProvider(
      asset,
    );
  }

  @override
  AssetPeopleNotifierProvider getProviderOverride(
    covariant AssetPeopleNotifierProvider provider,
  ) {
    return call(
      provider.asset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'assetPeopleNotifierProvider';
}

/// Maintains the list of people for an asset.
///
/// Copied from [AssetPeopleNotifier].
class AssetPeopleNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AssetPeopleNotifier, List<PersonWithFacesResponseDto>> {
  /// Maintains the list of people for an asset.
  ///
  /// Copied from [AssetPeopleNotifier].
  AssetPeopleNotifierProvider(
    Asset asset,
  ) : this._internal(
          () => AssetPeopleNotifier()..asset = asset,
          from: assetPeopleNotifierProvider,
          name: r'assetPeopleNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assetPeopleNotifierHash,
          dependencies: AssetPeopleNotifierFamily._dependencies,
          allTransitiveDependencies:
              AssetPeopleNotifierFamily._allTransitiveDependencies,
          asset: asset,
        );

  AssetPeopleNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.asset,
  }) : super.internal();

  final Asset asset;

  @override
  Future<List<PersonWithFacesResponseDto>> runNotifierBuild(
    covariant AssetPeopleNotifier notifier,
  ) {
    return notifier.build(
      asset,
    );
  }

  @override
  Override overrideWith(AssetPeopleNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AssetPeopleNotifierProvider._internal(
        () => create()..asset = asset,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        asset: asset,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AssetPeopleNotifier,
      List<PersonWithFacesResponseDto>> createElement() {
    return _AssetPeopleNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssetPeopleNotifierProvider && other.asset == asset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, asset.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssetPeopleNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<PersonWithFacesResponseDto>> {
  /// The parameter `asset` of this provider.
  Asset get asset;
}

class _AssetPeopleNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AssetPeopleNotifier,
        List<PersonWithFacesResponseDto>> with AssetPeopleNotifierRef {
  _AssetPeopleNotifierProviderElement(super.provider);

  @override
  Asset get asset => (origin as AssetPeopleNotifierProvider).asset;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
