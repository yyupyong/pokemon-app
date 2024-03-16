// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_fetch.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPokemonListHash() => r'ab2f5bc9f2bed25f48f20755854a68bc66cfb32b';

/// See also [fetchPokemonList].
@ProviderFor(fetchPokemonList)
final fetchPokemonListProvider =
    AutoDisposeFutureProvider<Paging<Pokemon>>.internal(
  fetchPokemonList,
  name: r'fetchPokemonListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchPokemonListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPokemonListRef = AutoDisposeFutureProviderRef<Paging<Pokemon>>;
String _$fetchPokemonDetailHash() =>
    r'fa66a3893ba371505c38a0d939e4b5ff958f6f52';

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

/// See also [fetchPokemonDetail].
@ProviderFor(fetchPokemonDetail)
const fetchPokemonDetailProvider = FetchPokemonDetailFamily();

/// See also [fetchPokemonDetail].
class FetchPokemonDetailFamily extends Family<AsyncValue<PokemonDetail>> {
  /// See also [fetchPokemonDetail].
  const FetchPokemonDetailFamily();

  /// See also [fetchPokemonDetail].
  FetchPokemonDetailProvider call(
    int id,
  ) {
    return FetchPokemonDetailProvider(
      id,
    );
  }

  @override
  FetchPokemonDetailProvider getProviderOverride(
    covariant FetchPokemonDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'fetchPokemonDetailProvider';
}

/// See also [fetchPokemonDetail].
class FetchPokemonDetailProvider
    extends AutoDisposeFutureProvider<PokemonDetail> {
  /// See also [fetchPokemonDetail].
  FetchPokemonDetailProvider(
    int id,
  ) : this._internal(
          (ref) => fetchPokemonDetail(
            ref as FetchPokemonDetailRef,
            id,
          ),
          from: fetchPokemonDetailProvider,
          name: r'fetchPokemonDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPokemonDetailHash,
          dependencies: FetchPokemonDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchPokemonDetailFamily._allTransitiveDependencies,
          id: id,
        );

  FetchPokemonDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<PokemonDetail> Function(FetchPokemonDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPokemonDetailProvider._internal(
        (ref) => create(ref as FetchPokemonDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PokemonDetail> createElement() {
    return _FetchPokemonDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPokemonDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPokemonDetailRef on AutoDisposeFutureProviderRef<PokemonDetail> {
  /// The parameter `id` of this provider.
  int get id;
}

class _FetchPokemonDetailProviderElement
    extends AutoDisposeFutureProviderElement<PokemonDetail>
    with FetchPokemonDetailRef {
  _FetchPokemonDetailProviderElement(super.provider);

  @override
  int get id => (origin as FetchPokemonDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
