import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:i_baza/features/category/presentation/bloc/category_bloc.dart';
import 'package:i_baza/features/category/presentation/widgets/category_item.dart';

import '../../data/model/status.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          switch (state.status) {
            case LoadingStatus.pure:
              context.read<CategoryBloc>().add(LoadingCategory());
              return const SizedBox();
            case LoadingStatus.loading:
              return const CupertinoActivityIndicator();
            case LoadingStatus.loadedWithSuccess:
              return state.isSearching
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.searchedCategory.length,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          category: state.searchedCategory[index],
                        );
                      },
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.categoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          category: state.categoryList[index],
                        );
                      },
                    );
            default:
              return Container(
                color: Colors.red,
                width: 50,
                height: 50,
              );
          }
        },
      ),
    );
  }
}
