import 'dart:math';

void naoPrimo(int num) {
  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      print('$num');
      break;
    }
  }
}

void main() {
  for (int i = 2; i <= 100; i++) {
    naoPrimo(i);
  }
}
