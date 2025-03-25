SetTimer(CheckTime, 60000)

CheckTime(){
    currentTime := A_Hour
    if(currentTime == "15:30"){
        Shutdown(1)
    }
}