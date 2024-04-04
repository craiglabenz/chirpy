import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_flutter/screens/screens.dart';
import 'package:flutter/material.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => const NewPostScreen()),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
