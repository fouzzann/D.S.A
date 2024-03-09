class Node {
 var data;
 Node? next;
 Node? prev;
 Node( this.data);
}
class Dlinkedlist{
  Node? head;
  Node? tail;
  

addNode(int data){
  Node? newNode = Node(data);
  if(head == null) {
    head = newNode;
  } else {
    newNode.prev = tail;
    tail?.next = newNode;
  }
     tail = newNode;
}
display(){
  Node? temp = head;
  if(head == null ){
    print('No Data');

  }

  while(temp != null){
    print(temp.data);
    temp = temp.next;
  }
}
delete(int data){
  Node? temp = head ;
  Node? prev;
  if( temp != null&& temp.data == data ){
    head = temp.next;
  }
  while(temp != null&& temp.data !=data){
    prev = temp;
    temp = temp.next;
  }
  if( temp ==tail){
    prev = tail;
    tail?.next = null;
  }
  temp?.prev?.next= temp.next;
  // temp?.next?.prev = temp.prev;
}
insertAfter(int nextTo, int data){
  Node? newNode = Node(data);
  Node? temp = head ;
  while(temp!= null&& temp.data != nextTo){
    temp = temp.next;
     
  }
  if(temp == null){
    print('value not found');
  }
  if( temp == tail ){
    tail = newNode;
    tail?.next = newNode;
  }
  newNode.next = temp?.next;
  newNode.prev= temp;
  temp?.next = newNode;
  
}
}

void main(){
Dlinkedlist list = Dlinkedlist();



list.addNode(1);
list.addNode(2);
list.addNode(3);
list.addNode(4);
list.insertAfter(3, 9);
list.display();

}
