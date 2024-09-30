
import 'package:flutter_riverpod/flutter_riverpod.dart';


enum Filter { gluteFree, lactoseFree, vegetarian, vegan }

class FilterNotifier extends StateNotifier<Map<Filter,bool>>{
  FilterNotifier():super({
            Filter.gluteFree: false,
            Filter.lactoseFree: false,
            Filter.vegetarian: false,
            Filter.vegan: false,
          });

          void setFilter(Filter filter,bool isActive){
            state ={
              ...state,
              filter:isActive
            };
          }
}

final filtersProvider = StateNotifierProvider<FilterNotifier,Map<Filter,bool>>((ref) => FilterNotifier());