

class Bubble{
  bubblesort(List<int> arr){
    for(int i=0;i<arr.length -1;i++){
      for( int j=0;j<arr.length -i-1;j++){
        if(arr[j]>arr[j+1]){
          int temp = arr[j];
          arr[j]  = arr[j+1];
          arr[j+1] = temp;
        }

      }
      
    }
    return arr;
 
  }
}
 void main (){
   Bubble value = Bubble();
   List<int> arr = [7,3,1,2,4];
   
   print(value.bubblesort(arr));
 }