import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RootScreenA extends StatelessWidget {
  const RootScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return const RootScreen(label: 'a', detailsPath: 'details');
  }
}

class RootScreenB extends StatelessWidget {
  const RootScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return const RootScreen(label: 'b', detailsPath: 'details');
  }
}

class DetailsScreenA extends StatelessWidget {
  const DetailsScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailsScreen(label: 'a');
  }
}

class DetailsScreenB extends StatelessWidget {
  const DetailsScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailsScreen(label: 'b');
  }
}

/// Widget for the root/initial pages in the bottom navigation bar.
class RootScreen extends StatelessWidget {
  /// Creates a RootScreen
  const RootScreen({
    required this.label,
    required this.detailsPath,
    Key? key,
  }) : super(key: key);

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab root - $label'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Screen $label',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () => context.router.pushNamed(detailsPath),
              child: const Text('View details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The details screen for either the A or B screen.
class DetailsScreen extends StatefulWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({
    required this.label,
    Key? key,
  }) : super(key: key);

  /// The label to display in the center of the screen.
  final String label;

  @override
  State<StatefulWidget> createState() => DetailsScreenState();
}

/// The state for DetailsScreen
class DetailsScreenState extends State<DetailsScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen - ${widget.label}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Details for ${widget.label} - Counter: $_counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: const Text('Increment counter'),
            ),
          ],
        ),
      ),
    );
  }
}
