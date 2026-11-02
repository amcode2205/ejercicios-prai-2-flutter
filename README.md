# Ejercicios PRAI 2 — Flutter (Tarea 2)

Soluciones de los **10 ejercicios** del documento `2. Ejercicios con Flutter_Tarea2.pdf`.

Cada carpeta es un proyecto Flutter independiente, listo para ejecutar en un **emulador Android** o dispositivo desde Visual Studio Code / Android Studio.

## Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Extensiones **Dart** y **Flutter** en VS Code (o Android Studio)
- Emulador Android o dispositivo físico

## Cómo ejecutar un ejercicio

1. Abrir la carpeta del ejercicio (por ejemplo `Ejercicio 1 - Hola Mundo`).
2. En terminal, dentro de esa carpeta:

```bash
flutter pub get
flutter run
```

3. O en VS Code: abrir `lib/main.dart` → seleccionar el emulador → **F5**.

## Lista de ejercicios

| # | Carpeta | Enunciado |
|---|---------|-----------|
| 1 | `Ejercicio 1 - Hola Mundo` | Texto centrado “¡Hola, mundo!” |
| 2 | `Ejercicio 2 - Boton cambia texto` | Botón que cambia el mensaje |
| 3 | `Ejercicio 3 - Contador` | Contador con FAB + |
| 4 | `Ejercicio 4 - Lista de elementos` | ListView de nombres |
| 5 | `Ejercicio 5 - Navegacion` | Pantalla 1 → Pantalla 2 |
| 6 | `Ejercicio 6 - Formulario` | Validación nombre y correo |
| 7 | `Ejercicio 7 - Provider` | Contador con Provider |
| 8 | `Ejercicio 8 - API REST` | Usuarios desde reqres.in |
| 9 | `Ejercicio 9 - SharedPreferences` | Contador persistente |
| 10 | `Ejercicio 10 - Prueba de Widget` | testWidgets del Hola Mundo |

Para el ejercicio 10, además de la app:

```bash
cd "Ejercicio 10 - Prueba de Widget"
flutter test
```
