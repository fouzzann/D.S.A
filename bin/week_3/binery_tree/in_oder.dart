
class Node{
  var value;
  Node? left;
  Node? right;
  Node(this.value);
  
}


class BineryTree{
Node? root;
insert(int value){
  root = insertval(root, value);

}
Node? insertval(Node? root , int value){
  if(root == null){
    return Node(value);
  }
  if(value<root.value){
    root.left = insertval(root.left, value);
  }else if(value>root.value){
    root.right = insertval(root.right, value);
  }
  return root;
}
dis(Node? node){
  if(node !=null){
    dis(node.left);
    print(node.value);
    dis(node.right);
  }
}

delete(int value){
  root = deleteval(root, value);
}
Node? deleteval(Node? root, int value){
  if(root == null){
    return root;
  }
  if(value<root.value){
    root.left = deleteval(root.left, value);
  }else if(value>root.value){
    root.right = deleteval(root.right, value);
  }else{
    if(root.left == null){
      return deleteval(root.right, value);
    }else if(root.right == null){
      return deleteval(root.left, value);
    }
  }
  return root;
}

search( int value){
return searchval(root, value);
}
Node? searchval(Node? node, int value){
  if(node == null|| node.value == value){
    return node;
  }
  if(value<node.value){
    return searchval(node.left, value);
  }else if(value> node.value){
    return searchval(node.right, value);
  }
}

smallest(Node? node){
while(node!.left!=null){
  node = node.left;
}
return node.value;
}

largest(Node? node){
while(node!.right!=null){
  node = node.right;
}
  return node.value;
}

findCloss(Node? node, int targ){
 int clossVal = node!.value;
 while(node!= null){
  if((node.value - targ)<(clossVal - targ).abs()){
    clossVal = node.value;
  }
  if(node.value == targ){
    break;
  }else if(node.value < targ){
    node = node.left;
  }else{
    node = node.right;
  }
 }
 return clossVal;
}

}

main(){
  BineryTree data  = BineryTree();
  data.insert(1);
  data.insert(2);
  data.insert(3);
  data.insert(4);
  data.insert(5);
  data.delete(3);
  Node? searchval = data.search(1);
  if(searchval!=null){
    print("searched value ${searchval.value} founded from the tree");
  }else{
    print('not found');
  }

int smallest = data.smallest(data.root);
if(smallest!=null){
  print("smallest value is ${smallest}");

}else{
  print('not found');
}

int largest = data.largest(data.root);
if(largest!=null){
  print('largest value is ${largest}');
}else{
  print('not found');
}

int targ = 2;
int clossVal  = data.findCloss(data.root, targ);
if(clossVal!=null){
  print("clossest value is $clossVal");
}else{
  print('no data found');
}
  data.dis(data.root);






}