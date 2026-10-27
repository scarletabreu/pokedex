import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajustes')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.palette_outlined),
            title: Text('Apariencia'),
            subtitle: Text('Preferencias de tema próximamente'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sync_outlined),
            title: Text('Sincronización'),
            subtitle: Text('El catálogo se actualiza al iniciar la aplicación'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Acerca de pokedex'),
            subtitle: Text('Pokédex Offline-First desarrollada con Flutter'),
          ),
        ],
      ),
    );
  }
}
