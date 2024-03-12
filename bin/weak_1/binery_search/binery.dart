
class Sample {
  void display(List<int>nums , int left , int right , int target){
    nums.sort();
    print('$nums');
    while(left<=right){
      var middle = ( left+ right)~/2;
      if(nums[middle] == target){
        print('$middle');
        break;
      }else if(nums [middle] > target){
        right = middle -1;
      }else{
       left = middle +1;
      }
    }
  }
}


main() {

 Sample sample = Sample();
 List<int> nums = [2,1,7,4,5,0];
 int target = 4;
 int left = 0;
 int right = nums.length;
 sample.display(nums, left, right, target);


}


