


class  MethodCalc{
  
  double temp1;
  double temp2;
  
  String result;
  MethodCalc({this.temp1,this.temp2});

  String add(){
     result = (temp1+temp2).toString();
     return result;
  }
  String multiply(){
   result = (temp1*temp2).toString();
   return result;     
  }
  String divide(){
    result= (temp1/temp2).toString();
    return result;
  }
  String remainder(){
    result= (temp1%temp2).toString();
    return result;
  }
  String subtract(){
   result= (temp1-temp2).toString();
   return result;
  }

}