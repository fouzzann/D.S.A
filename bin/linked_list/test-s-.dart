class Node{
  var data ;
  Node? next;
  Node(this.data);
}

class Slinkedlist{
  Node? head;
  Node? tail;
  addNode(int data){
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
      print('no value');

    }
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }

  insertAfter(int nextTo, int data){
    Node? temp = head;
    Node? newNode = Node(data);
  
    while(temp!= null && temp.next?.next?.data != nextTo){
      temp = temp.next;
    }
    if(temp == tail){
      tail = newNode;
      tail?.next = null;
    }
    newNode.next =temp?.next;
    temp?.next = newNode;
  }

  delete(int data){
    Node? temp = head ;
    Node? prev;
    if(temp != null && temp.data == data){
      head = temp.next;

    }
    while(temp !=null && temp.next?.data !=data){
      prev = temp;
      temp = temp.next;

    }
    if(temp == tail){
     tail = prev;
     tail?.next = null;
    }
    prev?.next = temp?.next;
    
  }
  reverse(){
    Node? temp = head;
    Node? prev;
    Node? nextNode;

   while(temp!=null){
      nextNode = temp.next;
      temp.next = prev;
      prev = temp;
      temp = nextNode;
   }
    head = prev;
  }
  middleValue(){
  Node? temp = head;
  Node? slow = temp;
  Node? fast = temp;
  
    while(slow?.next!= null&& fast?.next!=null){
      slow = slow?.next;
    fast = fast?.next?.next;
    }
  return slow?.data;


}


  }


void main(){
  Slinkedlist list = Slinkedlist();
  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);
  list.addNode(6);
  list.addNode(7);
  // list.delete(3);
print("middle value ${list.middleValue()}");
  list.display();
}