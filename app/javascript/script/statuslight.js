
document.addEventListener("turbolinks:load", ()=>{
      let p=document.querySelectorAll(".statusLight");
      for(i=0;i<p.length;i++){
        console.log(p[i].dataset.status);
        if(p[i].dataset.status == "未完成"){
            p[i].classList.add("doit");
        }else if(p[i].dataset.status == "完成"){
            p[i].classList.add("finish");
        }else if(p[i].dataset.status == "pending"){
            p[i].classList.add("pending");
        }
        
      }
      
})