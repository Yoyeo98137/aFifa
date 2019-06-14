// $(document).ready(function(){

// })
$(function(){
    $.ajax({
        url: "http://127.0.0.1:9418/index",
        type: "get",
        dataType: "json"
        }).then(function(products){
            // console.log(products[0].timg,products[0].tclub,products[0].tname,products[0].introduce);
            $mConer = $('.mr-container');

            for(let i=0;i<products.length;i++){
                $mConer.append(`
                <div class="mr-cont">
                    <img src="./img/nav/lg/${products[i].timg}">
                    <div>
                        <p class="fgold">${products[i].tclub}</p>
                        <h4 class="fgolder">${products[i].tname}</h4><br>
                        <span class="nfont">${products[i].introduce}</span>
                    </div>
                </div>
                `)
            }
        });
    /* 回到顶部 */
    var oBtn = document.getElementsByClassName('for-top')[0];

    function scrollCheck() {
        if(document.body.scrollTop > 670 || document.documentElement.scrollTop > 670) {
            oBtn.style.height = "50px";
            oBtn.style.opacity = "1";
        } else {
            oBtn.style.height = "0";
            oBtn.style.opacity = "0";
        }
    }
    var body = document.documentElement || document.body;
    function goToTop() {
        /*延时上升*/
        var loop = setInterval(function(){
            /*浏览器兼容*/
            body.scrollTop -= 32;
            console.log(body.scrollTop);
            if(body.scrollTop == 0) {
                clearInterval(loop);
            }
        }, 1);
    }
    /*滚动时执行*/
    window.onscroll = function() {
        scrollCheck();
    }

    oBtn.onclick = function() {
        goToTop();
    }
});