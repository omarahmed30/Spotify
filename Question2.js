
function decodeString(s){
    // place holder to capture the output
    let newS = ""
    // place all the alphabetic letter in this holder
    let string = ""
    let l = 0

    // a place holder to store all the numbers in the stirng in this array
    let num = []
    let k = 0
    let sLength = s.length 

    // storing all the numbers of string s in the num array by using regex expression
    for(let i = 0; i < sLength; i++){
      if (/\d/.test(s[i]) == true){
        num[k] = parseInt(s[i])
        k++
      } 

    // storing all the letters of string s in the string array by using regex expression
      else if(/^[a-zA-Z]/.test(s[i]) == true){
        string += s[i]
      } 
    }
    
    // in the code snippet below I am storing all the letter we captured above. 
    // And I am storing them as many time as their leading numbers in the original array
    for(let j = 0; j < num[l]; j++){
      if(num.length > 1)
        newS += string[l]
      else
        newS += string
      for(let m = 0; m < num[l+1]; m++){
        newS += string[l+1]
      }
    }
 

    return newS
}
  
  console.log(decodeString("4[ab]"))
  console.log(decodeString("2[b3[a]]"))