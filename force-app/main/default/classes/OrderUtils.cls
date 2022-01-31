public with sharing class OrderUtils
{

    private static OrderFulfilment_IF orderFulfilmentService;

    public static OrderFulfilment_IF getOrderFulfilmentService()
    {
        if (null == orderFulfilmentService)
        {
            String className = String.valueOf(Order_Setting__mdt.getInstance('Default').get('Fulfilment_Service_Class_Name__c'));

            if (null != className)
            {
                Type serviceType = Type.forName(className);
                if (null != serviceType)
                {
                    orderFulfilmentService = (OrderFulfilment_IF) serviceType.newInstance();
                }
            }
            else
            {
                orderFulfilmentService = new NoopOrderFulfilmentService();
            }
        }

        return orderFulfilmentService;
    }
}
