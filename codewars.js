var palindromeChainLength = function(n) {
  var num = n;
  var nStr = num.toString();
  var numOfSteps = 0;
  var isPalindrome = false;
  while (isPalindrome === false) {
    if (nStr === nStr.split("").reverse().join("")) {
      isPalindrome = true;
      return numOfSteps;
    } else {
      num += parseInt(nStr.split("").reverse().join(""));
      nStr = num.toString();
      numOfSteps++;
    }
  }
};


function findEvenIndex(arr) {
  var result = -1;
  for (var i = 0; i < arr.length; i++) {
    var leftSum = 0;
    var rightSum = 0;
    for (var j = 0; j < i; j++) {
      leftSum += arr[j];
    }
    for (var k = i + 1; k < arr.length; k++) {
      rightSum += arr[k];
    }
    if (leftSum === rightSum) {
      result = i;
    }
  }
  return result;
}


function countSmileys(arr) {
  var smileyCount = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length === 2) {
      if (arr[i].charAt(0) === ":" || arr[i].charAt(0) === ";" ) {
        if (arr[i].charAt(1) === ")" || arr[i].charAt(1) === "D") {
          smileyCount++;
        }
      }
    } else if (arr[i].length === 3) {
      if (arr[i].charAt(0) === ":" || arr[i].charAt(0) === ";" ) {
        if (arr[i].charAt(1) === "-" || arr[i].charAt(1) === "~") {
          if (arr[i].charAt(2) === ")" || arr[i].charAt(2) === "D") {
            smileyCount++;
          }
        }
      }
    }
  }
  return smileyCount;
}
