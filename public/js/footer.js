$(function(){
    $.ajax({
        url: "footer.html",
        type: "get",
        success: function(footer){
            $(footer).replaceAll("footer");
            $(`
            <link rel="stylesheet" href="./css/footer.css">
            `).appendTo("head");
            // 底部拉伸按钮(a标签)
            var bHide = document.getElementsByClassName('bor-hide')[0];
            var hBtn = document.getElementsByClassName('hea-btn')[0];
            var hMid = document.getElementsByClassName('hea-mid')[0];
            var hShowstyle = false;

            hBtn.onclick = function(){
                if(hShowstyle == false){
                    bHide.style.height = "200px";
                    bHide.style.opacity = 1;
                    hMid.style.height = "555px";
                    hShowstyle = true;
                }else{
                    bHide.style.height = "0px";
                    bHide.style.opacity = 0;
                    hMid.style.height = "355px";
                    hShowstyle = false;
                }
            }

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
        }
    })
})