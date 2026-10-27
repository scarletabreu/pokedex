import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Criterios de ordenamiento del catálogo.
enum PokemonSortOrder {
  numberAscending,
  numberDescending,
  nameAscending,
  nameDescending,
}

/// Estado inmutable de los filtros.
class PokemonFiltersState {
  final String searchQuery;
  final String? selectedType;
  final PokemonSortOrder sortOrder;

  const PokemonFiltersState({
    this.searchQuery = '',
    this.selectedType,
    this.sortOrder = PokemonSortOrder.numberAscending,
  });

  PokemonFiltersState copyWith({
    String? searchQuery,
    String? selectedType,
    PokemonSortOrder? sortOrder,
    bool clearType = false,
  }) {
    return PokemonFiltersState(
      searchQuery: searchQuery ?? this.searchQuery,
      selectedType: clearType ? null : selectedType ?? this.selectedType,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  bool get hasActiveFilters =>
      searchQuery.trim().isNotEmpty ||
      selectedType != null ||
      sortOrder != PokemonSortOrder.numberAscending;
}

/// Controlador de búsqueda, filtro y ordenamiento.
class PokemonFiltersNotifier extends Notifier<PokemonFiltersState> {
  @override
  PokemonFiltersState build() {
    return const PokemonFiltersState();
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSelectedType(String? type) {
    if (type == null || type.trim().isEmpty) {
      state = state.copyWith(clearType: true);
      return;
    }

    state = state.copyWith(selectedType: type);
  }

  void setSortOrder(PokemonSortOrder order) {
    state = state.copyWith(sortOrder: order);
  }

  void clearSearch() {
    state = state.copyWith(searchQuery: '');
  }

  void clearType() {
    state = state.copyWith(clearType: true);
  }

  void resetFilters() {
    state = const PokemonFiltersState();
  }
}

/// Estado global de filtros del catálogo.
final pokemonFiltersProvider =
    NotifierProvider<PokemonFiltersNotifier, PokemonFiltersState>(
      PokemonFiltersNotifier.new,
    );
