import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, boat, plain, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantBreakfast = false;
  bool wantLunch = false;
  bool wantDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viejar en auto'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viejar en bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viejar en avion'),
              value: Transportation.plain,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plain;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viejar en Submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
            title: const Text('Agrega Desayuno?'),
            value: wantBreakfast,
            onChanged: (value) => setState(() {
              wantBreakfast = !wantBreakfast;
              }
            )
        ),
        CheckboxListTile(
            title: const Text('Agrega Almuerzo?'),
            value: wantLunch,
            onChanged: (value) => setState(() {
              wantLunch = !wantLunch;
              }
            )
        ),
        CheckboxListTile(
            title: const Text('Agrega Cena?'),
            value: wantDinner,
            onChanged: (value) => setState(() {
              wantDinner = !wantDinner;
              }
            )
        ),
      ],
    );
  }
}
