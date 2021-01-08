
document.addEventListener("turbolinks:load", ()=>{
      let p=document.querySelectorAll(".statusLight");
      let today = new Date();
      let threeDay=259200000;
      for(i=0;i<p.length;i++){
        console.log(today.getDay()-3)
        if(p[i].dataset.status == "未完成"){
     
            if(today > Date.parse(p[i].dataset.date)){
              //超過預定時間未完成顯示紅色    
              p[i].classList.add("Overdue"); 
            }else if(today > (Date.parse(p[i].dataset.date)-threeDay)){
                p[i].classList.add("warning");
            }else{
                 p[i].classList.add("doit");
            }
        }else if(p[i].dataset.status == "完成"){
            p[i].classList.add("finish");
        }else if(p[i].dataset.status == "pending"){
            p[i].classList.add("pending");
        }
        
      }
      
})