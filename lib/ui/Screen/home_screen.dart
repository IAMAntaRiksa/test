import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_coding/bloc/rs_bloc.dart';
import 'package:test_coding/ui/Screen/home_rs_detail_screen.dart';

import 'package:test_coding/ui/widget/widget_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    context.read<RsBloc>().add(FetchRs());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RsBloc, RsState>(
      builder: (context, state) {
        if (state is RsLoading) {
          return WidgetState.loading(context);
        } else if (state is RsLoadingError) {
          return WidgetState.erroLoading(context);
        } else if (state is RsLoadingSuccses) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: state.rumahSakits.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    HomeDetailScreen(rs: state.rumahSakits[index]),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(state.rumahSakits[index].alamat),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
