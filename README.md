# Shoes App (Flutter)

A shoe-shop mobile app built with Flutter: onboarding splash screens, a product grid, product details, a cart and a saved-items list.

## Features

- Onboarding with page indicator (`smooth_page_indicator`)
- Product grid and product detail cards
- **Cart:** add and remove items, change quantity, total price, item-count badge (`badges`)
- **Saved items** list
- Custom typography with Google Fonts (Rubik)

## State management

Two `ChangeNotifier` classes registered with `MultiProvider` in `main.dart`:

- `CartProvider` holds the cart items, quantities and the total price
- `SaveProvider` holds the saved items

Widgets rebuild through `notifyListeners()` when the cart or saved list changes.

## Run

```
flutter pub get
flutter run
```

## Next steps

- Persist the cart with SQLite: `lib/cart/db_helper.dart` (sqflite) is prepared but not wired in yet
- Replace the hard-coded product list with an API
