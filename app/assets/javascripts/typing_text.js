var stringArray = [];
stringArray[0] = "Welcome To Food Forest";
stringArray[1] = "Find A Forrest Community Near You";
stringArray[2] = "Enter Your location Here and Press Enter";

var timer,
    typingTextTimer,
    isTypingText = true,
    currentChar = 0,
    index = 0,
    clear = true;


function typingText() {
  if (clear) {
    document.getElementById('typing_text').placeholder = "";
    clear = false;
  }


  if (isTypingText) {
    if (currentChar < stringArray[index].length) {
      document.getElementById('typing_text').placeholder += stringArray[index].charAt(currentChar);
      currentChar++;
      timer = setTimeout('typingText()', 70);
    } else {
      clear = true;
      currentChar = 0;
      index == stringArray.length - 1 ? index = 0 : index++;
      timer = setTimeout('typingText()', 2000);

    }

  } else {
    clearTimeout(timer);
  }

}

typingText();
