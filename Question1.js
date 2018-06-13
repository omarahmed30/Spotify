function sortByStrings(s,t){

  // a place holder to store new string
    let string = ""

  // storing the lengths of both arguments passed through the function's parameter because
  // .length is a function which iterate through the entire array to capture and return the array to us
  // so it is better to call that function once rather than on each iteration of a loop  
    let tLength = t.length 
    let sLength = s.length 

  // loop to go through the entire array of where we want to take the letter and check it with other array 
  for(let i = 0; i < tLength; i++){
    
  // following loop is checking the each letter of t array with s array and storing it in the string.  
    for(let j = 0; j < sLength; j++){
      if(t[i] == s[j])
        string += t[i]
    }
  }
  return string
  }
  
  
  console.log(sortByStrings("good", "odg"))
  console.log(sortByStrings("weather", "therapyw"))
  