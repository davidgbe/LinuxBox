///**
// * Created by satyakb on 10/4/14.
// */
//
//var client = new WSSHClient();
//
//client.connect({
//    // Connection and authentication parameters
//    username: 'satyab',
//    hostname: 'eniac.seas.upenn.edu',
//    authentication_method: 'password', // can either be password or private_key
//    password: "Idon'tno11", // do not provide when using private_key
//    key_passphrase: 'secretpassphrase', // *may* be provided if the private_key is encrypted
//    port: '22',
//
//    // Callbacks
//    onError: function(error) {
//        // Called upon an error
//        console.error(error);
//    },
//    onConnect: function() {
//        // Called after a successful connection to the server
//        console.debug('Connected!');
//
//        client.send('ls\n'); // You can send data back to the server by using WSSHClient.send()
//    },
//    onClose: function() {
//        // Called when the remote closes the connection
//        console.debug('Connection Reset By Peer');
//    },
//    onData: function(data) {
//        // Called when data is received from the server
//        console.debug('Received: ' + data);
//    }
//});
//
