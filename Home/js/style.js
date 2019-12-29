var img=document.getElementById("icon");
function toggleSidebar(){
   document.getElementById("slidebar").classList.toggle('active');
   // var Chevron= document.getElementById('img').src='icons/chevron-right.svg';
   if(img.getAttribute('src') == "icons/chevron-left.svg"){
      img.src="icons/chevron-right.svg";
   }
   else{
      img.src="icons/chevron-left.svg"
   }
    
}