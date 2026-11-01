package com.transsion.shorttv.order;

import android.content.Context;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.TranPayClient;
import com.transsion.shorttv.order.bean.CenterCreateTradingOrderRespEntity;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.PrePayInfoBean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f53046a = new d();

    public static final class a implements com.tn.tranpay.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f53047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f53048b;

        a(Function2 function2, Function0 function0) {
            this.f53047a = function2;
            this.f53048b = function0;
        }

        @Override // com.tn.tranpay.d
        public void a(com.tn.tranpay.b result, com.tn.tranpay.c cVar) {
            Intrinsics.h(result, "result");
            c cVar2 = c.f53045a;
            d dVar = d.f53046a;
            cVar2.a(dVar.b() + " --> onPurchasesUpdated() --> result = " + result + " -- purchase = " + cVar);
            if (com.tn.tranpay.a.f41505a.a(result.b()) && cVar != null) {
                cVar2.a(dVar.b() + " --> onPurchasesUpdated() --> paynicorn result --> 轮询Paynicorn支付结果 ....");
                this.f53048b.invoke();
                return;
            }
            cVar2.b(dVar.b() + " --> onPurchasesUpdated() --> paynicorn result is cancel");
            int iB = result.b();
            if (iB == 1) {
                this.f53047a.invoke(1002, "onPurchasesUpdated() --> 取消支付");
                return;
            }
            if (iB != 4) {
                this.f53047a.invoke(1004, "onPurchasesUpdated() --> 支付失败");
                return;
            }
            cVar2.a(dVar.b() + " --> onPurchasesUpdated() --> processing--> paynicorn result --> 轮询Paynicorn支付结果 ....");
            this.f53047a.invoke(1003, "onPurchasesUpdated() --> 支付进行中");
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        String simpleName = d.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void c(Context context, CenterCreateTradingOrderRespEntity centerCreateTradingOrderRespEntity, Function2 payFail, Function0 orderCheck4Paynicorn) {
        String string;
        Boolean payByLocalCurrency;
        String txnId;
        String description;
        String orderId;
        Double price;
        Intrinsics.h(payFail, "payFail");
        Intrinsics.h(orderCheck4Paynicorn, "orderCheck4Paynicorn");
        PrePayInfoBean prePayInfo = centerCreateTradingOrderRespEntity != null ? centerCreateTradingOrderRespEntity.getPrePayInfo() : null;
        if (prePayInfo == null || (price = prePayInfo.getPrice()) == null || (string = price.toString()) == null) {
            string = "0";
        }
        BillingParams billingParams = new BillingParams((centerCreateTradingOrderRespEntity == null || (txnId = centerCreateTradingOrderRespEntity.getTxnId()) == null) ? "" : txnId, string, (prePayInfo == null || (orderId = prePayInfo.getOrderId()) == null) ? "" : orderId, (prePayInfo == null || (description = prePayInfo.getDescription()) == null) ? "" : description, prePayInfo != null ? prePayInfo.getCurrency() : null, prePayInfo != null ? prePayInfo.getReferenceNo() : null, prePayInfo != null ? prePayInfo.getMemo() : null, null, null, false, (prePayInfo == null || (payByLocalCurrency = prePayInfo.getPayByLocalCurrency()) == null) ? false : payByLocalCurrency.booleanValue(), 384, null);
        if (context != null) {
            TranPayClient.f41488a.b(context, billingParams, new a(payFail, orderCheck4Paynicorn));
        }
    }

    public final void d(Context context, CreatePaynicornOrderReqBean createPaynicornOrderReqBean, b bVar) {
        c.f53045a.a(b() + " -->  --> purchase() --> 开始购买流程");
        if (context != null && createPaynicornOrderReqBean != null) {
            new PurchaseDialog().F0(createPaynicornOrderReqBean).p0(bVar).i0(context, "PurchaseDialog");
        } else if (bVar != null) {
            bVar.a(TmcConstants.COLD_OPEN_TYPE, "context == null || orderReq == null");
        }
    }
}
