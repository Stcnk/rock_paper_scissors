chatbot <- function() {
  id <- c(1,2,3,4)
  order_pizza <- c("Hawaiian","Pepperoni","Bacon","Seafood")
  price_pizza <- c(100, 120, 120, 150)
  df <- data.frame(id,order_pizza, price_pizza)
  response_want <- c("yes","sure","yeah","yep","Yes","no","nah","not today","nope", "No")
  price_of_pizza <- 0
  menus <- c()

 
  print("Hello!")
  print("Do you want some pizza? (Yes/No)")

  while(TRUE){

  

  userinput <- readLines("stdin", n = 1)
  ## other respond
  if (!userinput  %in% response_want) {
      print("Thank you")
      break
    }
  ## not order pizza
  if (userinput  %in% response_want[6:10]) {
      print("Thank you")
      break
    }
  ## order pizza
  if (userinput %in% response_want[1:5]) {
    print("This is the order of pizza")
    print(df)
    print("What pizza do you want to order? please type the number of pizza 1-4")
    user_select_menu <- tolower(readLines("stdin", n = 1))

 
  
    order <- order_pizza[match(user_select_menu, id)]
  
    menus <- append(menus, order)

    price_of_pizza <- price_pizza[match(user_select_menu, id)] + price_of_pizza

    print("Your order is")
    for (menu in menus){
      print(paste(menu, "and"))
    }  
    
    print(paste("total price is", price_of_pizza, "THB.", "Please pay at counter"))
    
    
  } else {
    print("Thank you")
  }

  cat("More pizza? (Yes/No)\n")


    
}

}

chatbot()
