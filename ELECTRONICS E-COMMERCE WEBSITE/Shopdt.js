const addressbtn = document.querySelector('#address-form')
const addressclose = document.querySelector('#address-close')


addressbtn.addEventListener("click", function() {
    document.querySelector('.address-form').style.display = "flex"
})
addressclose.addEventListener("click", function() {
    document.querySelector('.address-form').style.display = "none"
})
//------------slider-----------------//
const rightbtn = document.querySelector('.bi-chevron-right')
const leftbtn = document.querySelector('.bi-chevron-left')
const imgNuber = document.querySelectorAll('.slider-content-left-top img')
let index = 0
rightbtn.addEventListener("click", function(){
    index = index+1
    if(index>imgNuber.length-1) {
        index=0
    }
document.querySelector(".slider-content-left-top").style.right = index * 100+"%"
})
leftbtn.addEventListener("click", function(){
    index = index-1
   if(index<=0) {
    index=imgNuber.length-1
}
    document.querySelector(".slider-content-left-top").style.right = index * 100+"%"
})
//slider 1-----------slider chạy thủ công-------------
const imgNuberLi = document.querySelectorAll('.slider-content-left-bottom li')
imgNuberLi.forEach(function(image, index){
  image.addEventListener("click", function(){
    removeactive()
    document.querySelector(".slider-content-left-top").style.right = index * 100+"%"
    image.classList.add("active")
  })
})
function removeactive() {
    let imgactive = document.querySelector('.active')
    imgactive.classList.remove("active")
}
// slider 2 ---------------- slide chạy tự động-------------
function imgAuto () {
   index = index + 1
   if(index>imgNuber.length-1) {
    index=0
}
removeactive()
document.querySelector(".slider-content-left-top").style.right = index * 100+"%"
imgNuberLi[index].classList.add("active")
}
setInterval(imgAuto, 3000)
//--------Slider product---------------//
const rightbtntwo = document.querySelector('.bi-chevron-right-two')
const leftbtntwo = document.querySelector('.bi-chevron-left-two')
const imgNubertwo = document.querySelectorAll('.slider-product-one-content-items')
rightbtntwo.addEventListener("click", function(){
    index = index+1
    if(index>imgNubertwo.length-1) {
        index=0
    }
    document.querySelector(".slider-product-one-content-items-content").style.right = index * 100+"%"
}) 
leftbtntwo.addEventListener("click", function(){
    index = index-1
   if(index<=0) {
    index=imgNubertwo.length-1
}
    document.querySelector(".slider-product-one-content-items-content").style.right = index * 100+"%"
})