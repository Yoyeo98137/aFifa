window.onload=(function(){
    // header > game > 伸缩效果
    var hGame = document.querySelector('.hea-game');
    hGame.parentNode.onmouseover = function(){ 
        hGame.classList.add('hea-game-height');
    };
    hGame.parentNode.onmouseout = function(){
        hGame.classList.remove('hea-game-height');
    }

    // header > control > 伸缩效果
    var hCol = document.querySelector('.hea-control');
    hCol.parentNode.onmouseover = function(){ 
        hCol.classList.add('hea-col-height');
    };
    hCol.parentNode.onmouseout = function(){
        hCol.classList.remove('hea-col-height');
    }

/*    // alert(1);
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4 && xhr.status == 200){
            var result = xhr.responseText;
            var arr = JSON.parse(result);
            console.log(arr);
            // od1.innerHTML=`
            //     <img src="./img/index/${arr.limg}">
            //     <img src="./img/index/${arr.mimg}">
            //     <img src="./img/index/${arr.simg}">
            // `;
        }
    }
    xhr.open("get","/index",true);
    xhr.send(null);
})();
*/
// nav二级列表伸缩效果
var lLi = document.getElementsByClassName('list-li');
var alist = document.querySelectorAll('.list-li>.list-li-ul');

for(let i=0;i<lLi.length;i++){
    lLi[i].onmouseover = function(){
        alist[i].classList.add('active');
        alist[i].style.opacity = '1';
    };
    lLi[i].onmouseout = function(){
        alist[i].classList.remove('active');
        alist[i].style.opacity = '0';
    }
}

// for(let i=1;i<aLi.length;i++){
//     aLi[i].onmousemove=function(){
//         this.lastElementChild.setAttribute('style','display: block !important');
//         console.log(i)
//     }
//     aLi[i].onmouseout=function(){
//         this.lastElementChild.setAttribute('style','display: none !important');
//         console.log(i)
//     }
// }

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
            // console.log(body.scrollTop);
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

    // 球员动画
    // banner1 球员动画
    var firstGamer = document.querySelector('.img1>div>img');
    function oneAnimal(){
        var oMargin = parseInt(window.getComputedStyle(firstGamer).marginTop);
        var toTop = setInterval(function(){
            // console.log(oMargin);
            oMargin -= 2;
            // console.log(oMargin);
            firstGamer.style.marginTop = oMargin + "px";
            firstGamer.style.opacity = 1;
            if(oMargin < -930){
                clearInterval(toTop);
            }
        },6);
    };
    window.onload = oneAnimal();
    // banner4 球员动画
    var thGamer = document.querySelector('.img4>div>img');
    var thText = document.querySelector('.img4>div>div');

    function getScrollTop() {  
        var scrollPos;  
        if (window.pageYOffset) {  
        scrollPos = window.pageYOffset; }  
        else if (document.compatMode && document.compatMode != 'BackCompat')  
        { scrollPos = document.documentElement.scrollTop; }  
        else if (document.body) { scrollPos = document.body.scrollTop; }   
        return scrollPos;   
    };
    var toTop = setInterval(function(){
        // console.log(getScrollTop());
        var marTop = parseInt(getScrollTop());
        // console.log(marTop);
        if(marTop>=1300){
            clearInterval(toTop);
            thGamer.classList.add('mt-58');
            thGamer.style.opacity = 1;
            thText.classList.remove('toleft');
            thText.style.opacity = 1;
        }
    },600)
})();