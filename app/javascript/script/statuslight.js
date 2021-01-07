
document.addEventListener("turbolinks:load", ()=>{
      let p=document.querySelectorAll(".statusLight");
      for(i=0;i<p.length;i++){
        console.log(p[i].dataset.status);
      }
      
})