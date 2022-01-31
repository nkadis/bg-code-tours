public with sharing class CustomerSpecificOrderFulfilmentService implements OrderFulfilment_IF
{

    public void handleOrderFulfilments(Map<Id, Order__c> oldOrdersById, List<Order__c> updatedOrders)
    {
        // code that sends orders to a third party fulfilment system that will handle everything
        // including sending confirmation emails
    }

    private void sendDataToExternalSystem(List<Order__c> orders)
    {
        // send order data to an external system
    }
}