
class Node{
  var data;
  Node? next;
  Node(this.data);
  
}

class Slinkedlist{
  Node? head;
  Node? tail;

  addNode(int data ){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;

    }else{
      tail?.next = newNode;
    }
    tail = newNode;
  }
  
  display(){
     Node? temp = head;
    if(head == null){
      print('no data');
    }
  
    while(temp !=null){
      print(temp.data);
      temp = temp.next;
    }
  }
  deleteAfter( int data){
    Node? temp = head;
 

    if(temp != null && temp.data == data){
      head?.next= temp.next;

    }
    while(temp != null && temp.data != data){

      temp = temp.next;
    }
    if( temp == tail){
      temp?.next = temp.next?.next;
    }
     temp?.next = temp.next?.next;
  }

  deleteBefore(int data){
    Node? temp = head;
    Node? prev;

    if(temp != null && temp.next?.data == data){
      head = temp.next;
      return;
    }
    while(temp != null && temp.next?.next?.data !=data){
      prev = temp;
      temp = temp.next;
      
    }

    if(temp == tail){
      tail = prev;
      tail?.next = null;
    }
     temp?.next=temp.next?.next;
  }
  deleteTail(int data ){
    Node? temp = head;
    Node? prev;
    if(temp == tail ){
      prev = tail;
      tail?.next = null;
    }
  }
  

deleteAt(int data ){
  Node? temp = head;
  Node? prev; 

  if(temp!= null && temp.data == data){
    head = temp.next;
  }
  while(temp!= null&& temp.data != data){
    prev = temp;
    temp = temp.next;
  }
  if( temp == null){
    print('no value found');
    return;
  }
  if(temp == tail){
    prev = tail;
    tail?.next = null;

  }
  prev?.next =temp.next;

}
insertAt(int position, int data) {

Node? newNode = Node(data);
Node? temp = head;

if(position == 0) {

  Node? tem = head; 
  head = newNode;
  newNode.next = tem;
  return;

}

while(--position != 0){

  if(temp?.next != null) {
   temp = temp?.next;
  } else {
    print('index out bound');
  }
}
if( temp == null ){
  
  print('data unavailable to find');
  return;

}

if( temp == tail ){
  tail = newNode;
  tail?.next = null;
}

newNode.next = temp.next;
temp.next = newNode;
          
}

insertAfter( int nextTo, int data){
Node? newNode = Node(data);
Node? temp = head ;
while(temp != null && temp.data != nextTo){
  temp = temp.next;
  
}
if( temp == null ){
  
  print('data unavailable to');
  return;

}

if( temp == tail ){
  tail = newNode;
  tail?.next = null;
} 

newNode.next = temp.next;
temp.next = newNode;

}

middleValueDelete(){
  Node? temp = head;
  Node? slow = temp ;
  Node? fast = temp;
  Node? prev;
 
  while(slow?.next!= null && fast?.next != null){
    slow = slow?.next;
    fast = fast?.next?.next;
  }
  if(temp != null && temp.data == slow?.data){
    head = temp.next;
  }

  while(temp != null && temp.data != slow?.data){
    prev = temp;
    temp = temp.next;
  }
  if(temp ==tail){
    prev = tail;
    tail?.next = null;
  }
   prev?.next =temp?.next;
  }
  findMiddleValue(){
    Node? temp = head ;
    Node? slow = temp;
    Node? fast = temp;
    if(temp == null){
      print('no value found');
    }
    while(slow?.next!=  null && fast?.next != null){
      slow = slow?.next;
      fast = fast?.next?.next;

    }
    return slow?.data;
  }

insertBefore(int nextTo,int data ){
  Node newNode = Node(data);  
  Node? temp =head;
  while(temp!=null && temp.next?.data!= nextTo){
    temp = temp.next;
  }
  if( temp == null){
    print('he');
    return;
  }

  if(temp == tail){
    tail = newNode;
    tail?.next = null;

  }
   newNode.next = temp.next;
    temp.next = newNode; 
}

reverse(){
  Node? temp = head;
   Node? prev;
   Node? Next;
    while(temp != null){
      Next = temp.next;
      temp.next = prev;    
      prev = temp;
      temp = Next;
      }
      head = prev;
}
  }
  
void main(){

  Slinkedlist list = Slinkedlist();

  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);


//   recresion(node) {
//   if(node == null) {
//     return;
//   }
//   print(node.data);
//   recresion(node.next);
// }

// recresion(list.head);

  // list.deleteBefore(3);
  // list.deleteAfter(1);
  list.insertAfter(3, 7);

  // list.insertBefore(2, 0);
  
  // list.insertAt(1, 0);
  
  // list.reverse();
  // list.middleValueDelete();
  print("middle:${list.findMiddleValue()}");
  list.display();
  
}