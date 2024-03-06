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
  if(head == null){
    head = newNode;
    tail = newNode;
    return;
  }else{
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
}

void main(){
Dlinkedlist list = Dlinkedlist();
list.addNode(1);
list.addNode(1);
list.addNode(1);
list.addNode(1);
list.display();

}
