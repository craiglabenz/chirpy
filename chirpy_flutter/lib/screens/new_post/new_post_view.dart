import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_flutter/screens/new_post/new_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  late final NewPostBloc bloc;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc = NewPostBloc(GetIt.I<PostRepository>(), NewPostState.initial());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: bloc,
      listener: (context, NewPostState state) {
        if (state.item?.id != null) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('New Post')),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(controller: _controller),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => bloc.add(
            SaveNewPostEvent(
              Post(
                author: 'me',
                body: _controller.text,
                // TODO: figure out how to not have to set this now because it
                // will ultimately be rewritten by Postgres which has the only
                // clock we care about.
                createdAt: DateTime.now(),
              ),
            ),
          ),
          child: const Icon(Icons.done),
        ),
      ),
    );
  }
}
