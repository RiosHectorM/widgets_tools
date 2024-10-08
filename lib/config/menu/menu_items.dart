import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Counter Screen', 
    subTitle: 'Counter with Riverpod', 
    link: '/counter-screen', 
    icon: Icons.add_circle_outline_rounded,
    ),
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
    ),
    MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Contenedores con Tarjetas', 
    link: '/cards', 
    icon: Icons.credit_card_off_outlined
    ),
    MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded,
    ),
    MenuItem(
    title: 'Snackbars y Dialogs', 
    subTitle: 'Indicadores en Pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline,
    ),
    MenuItem(
    title: 'Animated Container', 
    subTitle: 'Stateful Widget Animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined,
    ),
    MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'Serie de controles de Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined,
    ),
    MenuItem(
    title: 'Intro a la Aplicacion', 
    subTitle: 'Tutorial Introductorio', 
    link: '/tutorial', 
    icon: Icons.accessible_rounded,
    ),
    MenuItem(
    title: 'InfiniteScroll y Pull', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite-scroll', 
    icon: Icons.list_alt_rounded,
    ),
    MenuItem(
    title: 'Cambiar Color de Tema', 
    subTitle: 'Cambiar colores de la Aplicacion', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
    ),
];
