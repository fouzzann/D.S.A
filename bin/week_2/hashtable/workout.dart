import '../sorting/quick.dart';

class Sort{
quick(List<int> arr, int start , int end ){
  int pivote = arr[end];
  int i = start -1;
  for(int j =start;j<end;j++){
    if(arr[j]<pivote){
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i+1];
  arr[i+1] = arr[end];
  arr[end] = temp ;
  return i+1;
}

}

quickSort(List<int> arr , int start, int end ){
  if(start< end ){
    int pi = partition(arr, start, end);
    quickSort(arr, start, pi-1);
    quickSort(arr, pi+1, end);
  }
}
main() {

  Sort value = Sort();
  List<int>arr = [4,6,5,2,1,89,55,900];
  int start =0;
  int end = arr.length -1;
  quickSort(arr, start, end);
  print(arr);



}