

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
    if(head == null){
      print('no data');
    }
    Node? temp = head;
    while(temp !=null){
      print(temp.data);
      temp = temp.next;
    }
  }
  deleteAfter( int data){
    Node? temp = head;
    Node? prev;

    if(temp != null && temp.data == data){
      head?.next= temp.next;

    }
    while(temp != null && temp.data != data){
      prev = temp;
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
  delete( int data ){
    Node? temp = head;
    Node? prev;

    if(temp!=null&& temp.data ==data){
      head = temp.next;
    }
    while(temp != null && temp.data != data){
      prev = temp;
      temp = temp.next;
    }
    if(temp == tail){
      prev = tail;
      tail?.next = null;
    }
    prev?.next = temp?.next;
  }
  
insertAfter(int nextTo,int data ){

  Node newNode = Node(data);  
  Node? temp =head;
  while(temp!=null && temp.data != nextTo){
    temp = temp.next;
    
  }

  if( temp == null){
    print('he');
    return;
  }

  if(temp == tail){
    tail = newNode;
    tail?.next = newNode;
  }
   newNode.next = temp.next;
    temp.next = newNode; 
}

  }
  
void main(){
  Slinkedlist list = Slinkedlist();
  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);
  list.delete(2);
  // list.deleteBefore(3);
  // list.deleteAfter(1);
  // list.insertAfter(2, 7);
  // list.insertBefore(3, 40);
   list.display();
}