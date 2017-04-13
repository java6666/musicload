function rankingList(index) {
    for (i=1;i<=6;i++){
        document.getElementById("rankingList"+i).style.display=i==index?"block":"none";
        document.getElementById("bg-color"+i).style.backgroundColor=i==index?"#F0F0F0":"white";
    }

}
