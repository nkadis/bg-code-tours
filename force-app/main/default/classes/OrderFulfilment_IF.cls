public interface OrderFulfilment_IF
{
    void handleOrderFulfilments(Map<Id, Order__c> oldOrdersById, List<Order__c> updatedOrders);
}