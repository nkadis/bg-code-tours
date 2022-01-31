trigger OrderUpdated_Order_au on Order__c (after update)
{
    OrderFulfilment_IF orderFulfilmentService = OrderUtils.getOrderFulfilmentService();
    if (null != orderFulfilmentService)
    {
        orderFulfilmentService.handleOrderFulfilments(Trigger.oldMap, Trigger.new);
    }
}