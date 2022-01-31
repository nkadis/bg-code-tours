public with sharing class NoopOrderFulfilmentService implements OrderFulfilment_IF
{

    public void handleOrderFulfilments(Map<Id, Order__c> oldOrdersById, List<Order__c> updatedOrders)
    {
        // this does nothing
    }
}