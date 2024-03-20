

class Sort{
List<int>mergeSort(List<int> arr){
  if(arr.length <=1){
    return arr;
  }
  int middle = arr.length ~/2;
  List<int>fisrtHalf = arr.sublist(0,middle);
  List<int>lastHalf = arr.sublist(middle);
  return join(mergeSort(fisrtHalf),mergeSort(lastHalf));
  
}
List<int> join(List<int> fisrtHalf,List<int> lastHalf){
  List<int>valueStore = List<int>.from(fisrtHalf+lastHalf);
  int i = 0;
  int j =0;
  int k = 0;

  while(i<fisrtHalf.length&&j<lastHalf.length){
    if(fisrtHalf[i]<lastHalf[j]){
      valueStore[k++] = fisrtHalf[i++];
    }else{
      valueStore[k++]= lastHalf[j++];
    }

  }
  while(i<fisrtHalf.length){
    valueStore[k++] = fisrtHalf[i++];
     }
     while(j<lastHalf.length){
      valueStore[k++] = lastHalf[j++];
     }
     return valueStore;
}
}


void main() {
  Sort value = Sort();
  List<int> arr = [7, 4, 166, 32, 11, 0, 444];
  print(value.mergeSort(arr));
}