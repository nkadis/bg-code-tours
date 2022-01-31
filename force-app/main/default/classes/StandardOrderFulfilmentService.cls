public with sharing class StandardOrderFulfilmentService implements OrderFulfilment_IF
{

    public void handleOrderFulfilments(Map<Id, Order__c> oldOrdersById, List<Order__c> updatedOrders)
    {
        // code that sorts orders and sends confirmation and order shipped emails
    }

    private void sendConfirmationEmails(List<Order__c> orders)
    {
        // send order confirmation emails
    }

    private void sendOrderShippedEmails(List<Order__c> orders)
    {
        // send order shipped emails with tracking number
    }
}

