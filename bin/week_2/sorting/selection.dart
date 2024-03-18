 class sort{
  selectionsort(List<int>arr){
    for(int i = 0 ; i< arr.length-1;i++){
      int min = i;
      for( int j=i+1;j<arr.length;j++){
        if(arr[j] < arr[min]){
          min = j;
        }
      }
      if(min !=i){
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
      }
    }
    return arr;
  }
 }
 void main(){
  sort value = sort();
  List<int> arr = [ 3,6,5,4,1,2];
  print(value.selectionsort(arr));
 }