import 'package:flutter/material.dart';
import 'package:flutter_application_components/themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(
      //     ' ${scrollController.position.pixels} ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  void add5() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => e + lastId));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: imagesId.length,
                  controller: scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/loading_gif.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image=${imagesId[index]}'));
                  }),
              if (isLoading)
                Positioned(
                    bottom: 40,
                    left: size.width * 0.5 - 25,
                    child: const IconLoading())
            ],
          ),
        ));
  }
}

class IconLoading extends StatelessWidget {
  const IconLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
