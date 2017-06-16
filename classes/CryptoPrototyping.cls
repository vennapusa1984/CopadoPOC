public class CryptoPrototyping {
    
    public static void testDigest() {
        Blob targetBlob = Blob.valueOf('UsersSSNInData');
        Blob newBlobFromSearch = Blob.valueOf('UsersSSNInData');
		Blob hash = Crypto.generateDigest('MD5', targetBlob);
		Blob newHash = Crypto.generateDigest('MD5', newBlobFromSearch);
        if (hash==newHash) {
            System.debug('blobs are equal');
                }                               
        else {System.debug('blobs are not equal');}
    }
}