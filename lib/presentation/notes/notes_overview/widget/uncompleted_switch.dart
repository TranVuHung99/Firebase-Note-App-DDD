import 'package:firebase_ddd_note_app/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UnCompletedSwitch extends HookWidget {
  const UnCompletedSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.read<NoteWatcherBloc>().add(
                toggleState.value ? const WatchUncompletedStarted() : const WatchAllStarted(),
              );
        },
        child: AnimatedSwitcher(
          duration: const Duration(microseconds: 100),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: toggleState.value
              ? Icon(
                  Icons.check_box_outline_blank,
                  key: const Key('outline'),
                )
              : Icon(
                  Icons.indeterminate_check_box,
                  key: const Key('indeterminate'),
                ),
        ),
      ),
    );
  }
}
