import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_flutter/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  late final TimelineBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = TimelineBloc(GetIt.I<PostRepository>(), TimelineState.initial());
    bloc.add(const TimelineEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, TimelineState state) {
        return Scaffold(
          body: ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              return PostView(post: state.posts[index]);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const NewPostScreen(),
                ),
              );
              bloc.add(const TimelineEvent.load());
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

class PostView extends StatelessWidget {
  const PostView({
    required this.post,
    super.key,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.body),
      subtitle: Text(post.createdAt.toIso8601String()),
    );
  }
}
