void main() { 
   Calculator c = new Calculator(); 
   print("The gross total : ${c.ret_tot()}"); 
   print("Discount :${c.ret_dis()}"); 
}  
class Calculate_Total { 
   int ret_tot() {} 
}  
class Calculate_Discount { 
   int ret_dis() {} 
}
class Calculator  implements Calculate_Total,Calculate_Discount { 
   int ret_tot() { 
      return 1000; 
   } 
   int ret_dis() { 
      return 50; 
   } 
}