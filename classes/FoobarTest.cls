@isTest
public class FoobarTest {
    
    static testMethod void verifyIsFooBar(){
        
        test.startTest();
        Foobar aFoobar = new Foobar();
        System.assertEquals(aFoobar.foo(), 'foo');
        System.assertEquals(aFoobar.bar(), 1);
        test.stopTest();
        
        
    } // end testmethod
     
} // end test class