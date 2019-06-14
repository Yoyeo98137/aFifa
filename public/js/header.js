$(function(){
    $.ajax({
        url: "header.html",
        type: "get",
        success: function(header){
            $(header).replaceAll("header");
            $(`
            <link rel="stylesheet" href="./css/header.css">
            `).appendTo("head");
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
        }
    })
})