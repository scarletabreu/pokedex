import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'initial_catalog_sync_controller.dart';

class StartupSyncGate extends ConsumerStatefulWidget {
  final Widget child;

  const StartupSyncGate({super.key, required this.child});

  @override
  ConsumerState<StartupSyncGate> createState() => _StartupSyncGateState();
}

class _StartupSyncGateState extends ConsumerState<StartupSyncGate> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      // No esperamos a la red para mostrar la app.
      unawaited(ref.read(initialCatalogSyncProvider.notifier).start());
    });
  }

  @override
  Widget build(BuildContext context) {
    // El contenido se renderiza sin depender del estado de la sincronización.
    return widget.child;
  }
}
