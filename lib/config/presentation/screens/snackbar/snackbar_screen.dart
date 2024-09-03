import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('GHola'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Estas Seguro???'),
              content: const Text(
                  'Duis officia qui ullamco ea irure ullamco sit elit. Velit eiusmod commodo esse voluptate magna mollit. Reprehenderit esse aliqua pariatur ad et dolore do mollit cupidatat in laborum. Do Lorem et dolore aute. Esse id id dolore laboris enim est dolor dolore veniam veniam labore laborum officia aliquip. Excepteur aliqua adipisicing adipisicing est dolor sint. Quis adipisicing enim incididunt occaecat esse aute.'),
              actions: [
                TextButton(
                  onPressed: ()=> context.pop(), 
                  child: const Text('Cancelar'),
                ),
                FilledButton(
                  onPressed: ()=> context.pop(), 
                  child: const Text('Aceptar'),
                )
              ],
            )
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Laborum veniam mollit qui consequat ad. Amet eiusmod sint laboris tempor consectetur dolore et aliquip fugiat ad reprehenderit. Ipsum irure consectetur elit irure reprehenderit duis quis et ex minim eu nulla. Non culpa velit pariatur sint dolor culpa amet consequat nulla occaecat aliquip. Laborum velit consectetur amet irure velit voluptate quis est ut. Eiusmod nisi veniam consequat nulla velit reprehenderit sunt nulla consectetur ullamco incididunt ut sunt.')
                  ]);
                },
                child: const Text('Licencias Usadas')),

            const SizedBox(height: 10,),

            FilledButton.tonal(
                onPressed: () => openDialog(context), 
                child: const Text('Mostrar Dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
