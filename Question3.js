function changePossibilities(amount, arrayOfCoins){

      // a place holder to capture all the possible ways we can make the change
      let possibilities = []

      // initializing the each index of array to zero except the first index
      for (let i = 1; i <= amount; i++) {
          possibilities[i] = 0
      }
      // if the amount is zero than there is only one possibilities.
      possibilities[0] = 1


        
    // go through the whole arrayOfCoins
    arrayOfCoins.forEach(function(money){
       
        // checking each money coin in the arrayOfCoins
        for (let i = money; i <= amount; i++) {

            // checking to see if we can make the change from the remainder
            let remainder = i - money
            possibilities[i] += possibilities[remainder]
        }
    })
    // the sum of all possibilities is stored here
    return possibilities[amount]
} 

console.log(changePossibilities(4, [1,2,3]))