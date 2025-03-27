SetTimer(CheckTime, 60000)

CheckTime() {
    currentTime := SubStr(A_Now, 9, 4)
    if (currentTime == "0915") {  
        Shutdown(8)
    }
}