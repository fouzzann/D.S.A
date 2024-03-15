class Bubble {
  bubblesort(List<int> store) {
    for (int i = 0; i < store.length - 1; i++) {
      for (int j = 0; j < store.length - i - 1; j++) {
        if (store[j] > store[j + 1]) {
          int temp = store[j];
          store[j] = store[j + 1];
          store[j + 1] = temp;
        }
      }
    }
    return store;
  }
}
void main(){
  Bubble bubble = Bubble();
  List<int> num = [1,3,4,5,6,];
  print(bubble.bubblesort(num));
}