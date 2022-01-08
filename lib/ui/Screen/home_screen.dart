import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_coding/bloc/rs_bloc.dart';
import 'package:test_coding/ui/Screen/google_map_screen.dart';
import 'package:test_coding/ui/Screen/home_detail_screen.dart';
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
  final TextEditingController textEditingController = TextEditingController();

  void _listener() {
    context.read<RsBloc>().add(
          SearchEvent(searchRs: textEditingController.text),
        );
  }

  @override
  void initState() {
    context.read<RsBloc>().add(FetchRs());
    textEditingController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            color: const Color(0xFFF2DDBB),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  const Text(
                    'Rumah Sakit',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset('assets/icons/search.svg'),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: BlocBuilder<RsBloc, RsState>(
                      builder: (context, state) {
                        if (state is RsLoading) {
                          return WidgetState.loading(context);
                        } else if (state is RsLoadingError) {
                          return WidgetState.erroLoading(context);
                        } else if (state is RsLoadingEmptyState) {
                          return WidgetState.emptyState(context);
                        } else if (state is RsLoadingSuccses) {
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: .90,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20,
                            ),
                            itemCount: state.rumahSakits.length,
                            itemBuilder: (BuildContext context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomeDetailScreen(
                                            rs: state.rumahSakits[index]);
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        child: Image.network(
                                          state.rumahSakits[index].imageUrl,
                                          fit: BoxFit.cover,
                                          height: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          state.rumahSakits[index].nama,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Cairo",
                                            fontSize: 15,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                              onPressed: () async {
                                                context.read<RsBloc>().add(
                                                    CallNumEvent(
                                                        number:
                                                            'tel: ${state.rumahSakits[index].telpon}'));
                                              },
                                              icon: const Icon(Icons.phone),
                                            ),
                                            IconButton(
                                              onPressed: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return GoogleMapScreen(
                                                        ids: state
                                                            .rumahSakits[index],
                                                      );
                                                    },
                                                  ),
                                                );
                                              },
                                              icon: const Icon(Icons.map),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
