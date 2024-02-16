onmessage = function(e){
    let result = 0;

    for(i = 0; i < 1000000000; i++){
        result += i;
    }

    postMessage(result);
}