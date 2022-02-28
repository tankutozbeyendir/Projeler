var rooms = [
    {
        roomname : 'Kral Suit',
        roomimage : 'room1.jpg'
    },
    {
        roomname : 'Balayı Suit',
        roomimage : 'room2.jpg'
    }
]

var index = 0;
var slaytCount = rooms.length;
var interval;
var settings = {
    duration : '5000',
    random : true
};


init(settings);

document.querySelector('.fa-chevron-left').addEventListener('click',function(){
    index--;
    showSlide(index);
    console.log(index);
});

document.querySelector('.fa-chevron-right').addEventListener('click',function(){
    index++;
    showSlide(index);
    console.log(index);    
});


var prev;
function init(settings){
    interval = setInterval(function(){
        //
        if(settings.random){
            // random index
            do {
                index =  Math.floor(Math.random() * slaytCount); 
            }
            while(index == prev) {
                prev = index;
            }
        }
        else {

        }
        showSlide(index);
    }, settings.duration)
}


function showSlide(i){

    index = i;

    if (i<0) {
        index = slaytCount - 1;
    }

    if(i >= slaytCount){
        index = 0;
    }


    document.querySelector('.roomname').textContent = rooms[index].roomname;

    document.querySelector('.in-image').setAttribute('src',rooms[index].roomimage);
    
}


