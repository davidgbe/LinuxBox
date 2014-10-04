var VM = window.VM || {};

VM.init = function(application_key, application_secret) {
    VM.application_key = application_key;
    VM.application_secret = application_secret;
}

VM.createInstance = function(selector) {
    // Find first element of selector and replace with iframe to us
    if(!VM.application_key || !VM.application_secret) {
        console.log("VM: Missing application key and secret");
        return;
    }
}