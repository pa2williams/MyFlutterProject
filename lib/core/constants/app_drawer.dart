import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String title;
  final List<DrawerItem> items;

  const AppDrawer({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      
      child: Column(
        children: [
          
          DrawerHeader(
            decoration: 
            
            
            BoxDecoration(
              color: theme.colorScheme.primary,
            ),

            
            
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: Icon(item.icon, color: theme.colorScheme.onSurface),
                  title: Text(item.label),
                  onTap: () {
                    Navigator.pop(context);
                    item.onTap?.call(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem {
  final String label;
  final IconData icon;
  final void Function(BuildContext context)? onTap;

  DrawerItem({
    required this.label,
    required this.icon,
    this.onTap,
  });
}