
let h1Element = document.createElement("h1");
h1Element.textContent = "Dynamic Form";

let containerElement = document.getElementById("myContainer");
containerElement.appendChild(h1Element);

let formContainer = document.createElement("label");
formContainer.id='text';
formContainer.textContent = "Enter the Email";
containerElement.appendChild(formContainer);

let brakeElement=document.createElement('br');
containerElement.appendChild(brakeElement);

let x = document.createElement("INPUT");
x.setAttribute("type", "text");
// x.setAttribute("value", "Hello World!");
containerElement.appendChild(x);
/////////////////////////////////////

let containerElement2 = document.getElementById("myContainer2");

let formContainer2 = document.createElement("label");
formContainer2.id='text';
formContainer2.textContent = "Enter the password";
containerElement2.appendChild(formContainer2);

let brakeElement2=document.createElement('br');
containerElement2.appendChild(brakeElement2);

let y = document.createElement("INPUT");
y.setAttribute("type", "password");
// x.setAttribute("value", "Hello World!");
containerElement2.appendChild(y);
////////////////////////////

let brakeElement3=document.createElement('br');
containerElement2.appendChild(brakeElement3);

let submitButton=document.createElement('Button');
submitButton.onclick="#";
submitButton.textContent='submit';
containerElement2.appendChild(submitButton);
