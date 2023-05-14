let div=document.createElement('div');
div.classList.add('modie');
let containerDiv=document.querySelector('.content');
containerDiv.appendChild(div);

let submitBtm=document.getElementById('adde');
submitBtm.addEventListener('click',displaylist);

function displaylist()
{
    let name=document.getElementById('name').value;
    let emal=document.getElementById('desc').value;
    let html=`<div class="modie">


        <div class="small-container single-product">
            <div class="row">
                <div class="col-2">
                    <img src="images/gal1.jpg" alt="" width="100%" height="100%"id="ProductImg">
    
                    <div class="small-img-row">
                        <div class="small-img-col">
                            <img src="images/gal1.jpg" alt="" width="100%" height="100%" class="small-img">
                        </div>
                        <div class="small-img-col">
                            <img src="images/gal2.jpg" alt="" width="100%" height="100%" class="small-img">
                        </div>
                        <div class="small-img-col">
                            <img src="images/gal3.jpg" alt="" width="100%" height="100%"class="small-img">
                        </div>
                        <div class="small-img-col">
                            <img src="images/gal4.jpg" alt="" width="100%" height="100%"class="small-img">
                        </div>
    
    
                    </div>
    
                </div>
                <div class="col-2">
                    <p>Home / ${name}</p>
                    <h1>${name}</h1>
                    <h4></h4>
                    
                   
                    <a href="" class="btn">visit Website</a>
                    <h3>NGO Details <i class="fa fa-indent"></i></h3>
                    <br>
                    <p   >${emal}
                    </p>
                </div>
            </div>
        </div>
    </div>`
    div.insertAdjacentHTML('beforeend',html);
    var ProductImg = document.getElementById("ProductImg");
    var SmallImg = document.getElementsByClassName("small-img");

    SmallImg[0].onclick = function () {
        ProductImg.src = SmallImg[0].src;
    }
    SmallImg[1].onclick = function () {
        ProductImg.src = SmallImg[1].src;
    }
    SmallImg[2].onclick = function () {
        ProductImg.src = SmallImg[2].src;
    }
    SmallImg[3].onclick = function () {
        ProductImg.src = SmallImg[3].src;
    }
}

function showform(){
var inp=
                        document.getElementById("myloc").innerHTML=inp;
                        var MenuItems = document.getElementById("regg");

        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
                MenuItems.style.overflow="auto";
            }
            else {
                MenuItems.style.maxHeight = "0px";
            }
        }
}